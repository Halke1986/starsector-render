using System;
using System.Diagnostics;
using System.IO;
using System.Windows.Forms;

internal static class Launcher
{
    private static int Main()
    {
        string directory = AppDomain.CurrentDomain.BaseDirectory;
        string java = Path.GetFullPath(
            Path.Combine(directory, @"..\jre\bin\javaw.exe"));

        var startInfo = new ProcessStartInfo
        {
            FileName = java,
            Arguments = "@fr.vmparams",
            WorkingDirectory = directory,
            UseShellExecute = false
        };

        try
        {
            using (Process process = Process.Start(startInfo))
            {
                process.WaitForExit();
                return process.ExitCode;
            }
        }
        catch (System.ComponentModel.Win32Exception ex)
        {
            MessageBox.Show("Could not start " + java + "\n\n" + ex.Message,
                "Fast Rendering", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return 1;
        }
    }
}