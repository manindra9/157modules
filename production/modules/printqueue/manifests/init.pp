class printqueue{
printer { "Basic_Printer":
    ensure      => present,
    url         => "lpd://LP-5CD736B6BF/printer_a",
    description => "This is the printer description",
    ppd         => "/Library/Printers/PPDs/Printer.ppd", # OR
    model       => "drv:///sample.drv/zebracpl.ppd",
  }
}
