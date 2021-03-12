#' Création d'un theme echarts4r a partir des preco Akiani
#'
#' @param user_theme light ou dark
#'
#' @return un theme
#' @export
#'
#' @examples
#' create_echarts_theme(user_theme = "dark")
#' create_echarts_theme(user_theme = "light")
create_echarts_theme <- function(user_theme = "light") {

  #############################
  ## finalisation des themes ##
  #############################

  dark_graphe_theme <-
    list(
      background = dark_background,

      title_fontsize =  title_fontsize,
      title_font = title_font,
      title_fontcolor = white,
      title_fontweight = title_fontweight,
      title_lineheight = title_lineheight,
      title_leftposition = title_leftposition,

      subtitle_fontsize = subtitle_fontsize,
      subtitle_font = subtitle_font,
      subtitle_fontcolor = "#9f9f9f",
      subtitle_fontweight = subtitle_fontweight,
      subtitle_lineheight = subtitle_lineheight,

      axis_names_fontsize = axis_names_fontsize,
      axis_names_font = axis_names_font,
      axis_names_fontcolor = "#9f9f9f",
      axis_names_fontweight = axis_names_fontweight,
      axis_names_lineheight = axis_names_lineheight,

      axis_fontsize = axis_fontsize,
      axis_font = axis_font,
      axis_fontcolor = "#9f9f9f",
      axis_fontweight = axis_fontweight,
      axis_lineheight = axis_lineheight,

      grid_color = grid_color,
      grid_width = grid_width,

      tooltip_background = bright_blue,
      tooltip_fontsize = tooltip_fontsize,
      tooltip_font = tooltip_font,
      tooltip_fontcolor = charcoal_grey,
      tooltip_fontweight = tooltip_fontweight,
      tooltip_lineheight = tooltip_lineheight,

      legend_fontsize = legend_fontsize,
      legend_font = legend_font,
      legend_fontcolor = white,
      legend_fontweight = legend_fontweight,
      legend_lineheight = legend_lineheight,
      legend_leftposition = legend_leftposition,

      observed_traffic_line_style = observed_traffic_line_style,
      predicted_traffic_line_style = predicted_traffic_line_style_dark_mode,
      observed_traffic_halo_style = observed_traffic_halo_style,
      observed_traffic_scatter_style = observed_traffic_scatter_style,
      area_styles = area_styles,
      multiples_curves_observed_traffic_line_style = multiples_curves_observed_traffic_line_style

    )


  light_graphe_theme <-
    list(
      background = white,

      title_fontsize =  title_fontsize,
      title_font = title_font,
      title_fontcolor = charcoal_grey,
      title_fontweight = title_fontweight,
      title_lineheight = title_lineheight,
      title_leftposition = title_leftposition,

      subtitle_fontsize = subtitle_fontsize,
      subtitle_font = subtitle_font,
      subtitle_fontcolor = brownish_grey,
      subtitle_fontweight = subtitle_fontweight,
      subtitle_lineheight = subtitle_lineheight,

      axis_names_fontsize = axis_names_fontsize,
      axis_names_font = axis_names_font,
      axis_names_fontcolor = brownish_grey,
      axis_names_fontweight = axis_names_fontweight,
      axis_names_lineheight = axis_names_lineheight,

      axis_fontsize = axis_fontsize,
      axis_font = axis_font,
      axis_fontcolor = brownish_grey,
      axis_fontweight = axis_fontweight,
      axis_lineheight = axis_lineheight,

      grid_color = grid_color,
      grid_width = grid_width,

      tooltip_background = bright_blue,
      tooltip_fontsize = tooltip_fontsize,
      tooltip_font = tooltip_font,
      tooltip_fontcolor = white,
      tooltip_fontweight = tooltip_fontweight,
      tooltip_lineheight = tooltip_lineheight,

      legend_fontsize = legend_fontsize,
      legend_font = legend_font,
      legend_fontcolor = charcoal_grey,
      legend_fontweight = legend_fontweight,
      legend_lineheight = legend_lineheight,
      legend_leftposition = legend_leftposition,

      observed_traffic_line_style = observed_traffic_line_style,
      predicted_traffic_line_style = predicted_traffic_line_style_light_mode,
      observed_traffic_halo_style = observed_traffic_halo_style,
      observed_traffic_scatter_style = observed_traffic_scatter_style,
      area_styles = area_styles,
      multiples_curves_observed_traffic_line_style = multiples_curves_observed_traffic_line_style
    )

  if(user_theme == "dark") return(dark_graphe_theme)

  return(light_graphe_theme)

}



