#' Creation un path svg pour les legends echarts4r
#'
#' @param type dotted ou dashed
#'
#' @return un path svg
#' @export
#'
#' @examples
#' create_svg_path(type = "dotted")
#' create_svg_path(type = "dashed")
create_svg_path <- function(type = "dotted") {

  if(type == "dotted") path <- 'path://M335 1316 c-63 -28 -125 -122 -125 -191 0 -71 62 -164 127 -192 18 -7 58 -13 90 -13 72 0 125 28 168 88 27 39 30 52 30 117 0 65 -3 78 -30 117 -43 61 -95 88 -170 87 -33 0 -73 -6 -90 -13z, M1035 1313 c-76 -40 -115 -103 -115 -188 0 -121 85 -205 205 -205 121 0 205 84 205 205 0 84 -39 148 -112 186 -46 24 -140 25 -183 2z, M1714 1298 c-61 -42 -94 -102 -94 -173 0 -71 33 -131 94 -172 41 -28 57 -33 107 -33 76 0 115 16 161 68 76 84 76 190 0 274 -46 52 -85 68 -161 68 -50 0 -66 -5 -107 -32z'

  else if(type == "dashed") {
    path <- 'path://M180 1000 l0 -40 200 0 200 0 0 40 0 40 -200 0 -200 0 0 -40z, M810 1000 l0 -40 200 0 200 0 0 40 0 40 -200 0 -200 0 0 -40zm, M1440 1000 l0 -40 200 0 200 0 0 40 0 40 -200 0 -200 0 0 -40z'
  }

  path

}
