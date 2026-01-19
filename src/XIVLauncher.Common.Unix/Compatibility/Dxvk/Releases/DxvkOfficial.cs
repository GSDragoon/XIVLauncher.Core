namespace XIVLauncher.Common.Unix.Compatibility.Dxvk.Releases;

public sealed class DxvkOfficialRelease : IDxvkRelease
{
    public string Name { get; } = "dxvk-2.7.1";
    public string DownloadUrl { get; } = "https://github.com/doitsujin/dxvk/releases/download/v2.7.1/dxvk-2.7.1.tar.gz";
    // SHA512 checksum
    public string Checksum { get; } = "49f617de31e502fc158df3845845a3c19fa912681dbbf0e2309079184fd9957905350669dcaf1e3ba661f2f1739b5f6b9e1151e73b485021491f194eae9c2d13";
}
