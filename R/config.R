# colors
charcoal_grey <- "#292930";
cornflower <- "#6969fc";
dark_sea_green <- "#128e3d";
warm_pink <- "#fd5072";
soft_blue <- "#5cadfd";
macaroni_and_cheese <- "#edae38";
pastel_red <- "#ef594c";
azure <- "#1eb1fc";
pastel_purple <- "#c4a5fd";
seafoam_blue <- "#60ccb7";
bubblegum_pink <- "#fd79da";
white <- "#ffffff";
pastel_orange <- "#fd994e";
cerulean <- "#039ed2";
brownish_grey <- "#777777";
bright_blue <- "#0066ff";
black  <- "#000000"


# parametres generique
dark_background <- "#050506"
white_background <- white

title_fontsize <- 14
title_font <- "'Roboto', sans-serif" #"Roboto, Bold" # voir si modif
title_fontweight <- "bold"
title_lineheight <- 19
title_leftposition <- "5%"

subtitle_fontsize <- 10
subtitle_font <- "'Roboto', sans-serif" # "Roboto, Medium" # voir si modif
subtitle_fontweight <- "normal"
subtitle_lineheight <- 15

axis_names_fontsize <- 10
axis_names_font <- "'Roboto', sans-serif"# "Roboto, Medium"
axis_names_fontweight <- "normal"
axis_names_lineheight <- 15

axis_fontsize <- 10
axis_font <- "'Roboto', sans-serif"#"Roboto, Regular"
axis_fontweight <- "normal"
axis_lineheight <- 15

tooltip_fontsize <- 12
tooltip_font <- "'Roboto', sans-serif"#"Roboto, Medium" #medium c'est gras
tooltip_fontweight <- "normal"
tooltip_lineheight <- 15


legend_fontsize <- 12
legend_font <- "'Roboto', sans-serif"#"Roboto, Regular"
legend_fontweight <- "normal"
legend_lineheight <- 15
legend_leftposition = "10%"

grid_color <- "#aaaaaa"
grid_width <- 1.2






#####################
# design des lignes #
#####################

observed_traffic_line_style <- list(
  lineStyle = list(
    color =  bright_blue,
    borderColor = bright_blue,
    borderWidth= 3
  )
)

multiples_curves_observed_traffic_line_style <- list( # cas de figure où l'utilisateur choisit "capteurs séparés", on lui propose 6 courbes
  # courbe 1
  list(
    lineStyle = list(
      color =  cerulean,
      borderColor = cerulean,
      borderWidth= 3
    )
  ),
  # courbe 2
  list(
    lineStyle = list(
      color =  dark_sea_green,
      borderColor = dark_sea_green,
      borderWidth= 3
    )
  ),
  # courbe 3
  list(
    lineStyle = list(
      color =  macaroni_and_cheese,
      borderColor = macaroni_and_cheese,
      borderWidth= 3
    )
  ),
  # courbe 4
  list(
    lineStyle = list(
      color =  pastel_red,
      borderColor = pastel_red,
      borderWidth= 3
    )
  ),
  # courbe 5
  list(
    lineStyle = list(
      color =  pastel_purple,
      borderColor = pastel_purple,
      borderWidth= 3
    )
  ),
  # courbe 6
  list(
    lineStyle = list(
      color =  bright_blue,
      borderColor = bright_blue,
      borderWidth= 3
    )
  )

)


predicted_traffic_line_style_dark_mode <- list(
  lineStyle = list(
    color =  white,
    borderColor= white,
    borderWidth = 3,
    type = "dashed"
  )
)

predicted_traffic_line_style_light_mode <- list(
  lineStyle = list(
    color =  black,
    borderColor= black,
    borderWidth = 3,
    type = "dashed"
  )
)



observed_traffic_halo_style <- list(
  symbolSize = 25,

  itemStyle = list(
    color =  bright_blue,
    borderColor = bright_blue,
    borderWidth= 3,
    opacity = 0.2
  )
)

observed_traffic_scatter_style <- list(
  symbolSize = 8,

  itemStyle = list(
    color =  bright_blue,
    borderColor= bright_blue,
    borderWidth= 3,
    opacity = 1
  ),

  emphasis = list( # affichage de l'hover
    itemStyle = list(
      color =  "red",
      borderColor= "red",
      borderWidth= 3,
      shadowColor=  "red",
      shadowBlur= 20,
      shadowOffsetY= 0,
      shadowOffsetX= 0
    )
  )
)



#####################
## design des aires #
#####################

styleArea <- function(color1, color2) {
  return(
    list(color = list(
      type = "linear",
      x = 0,
      y = 0,
      x2 = 0,
      y2 = 1,
      colorStops = list(
        list(
          offset = 0,
          color = color1
        ),
        list(
          offset = 1,
          color = color2
        )
      ),
      global = FALSE
    ))
  )

}


area_styles <- list(
  low_traffic = list(
    lineStyle = list(width = 0,
                     color = dark_sea_green
    ),
    areaStyle = styleArea(color1 = glue::glue('rgba({glue::glue_collapse(col2rgb(dark_sea_green), sep = ",")},1)'),
                          color2 = glue::glue('rgba({glue::glue_collapse(col2rgb(dark_sea_green), sep = ",")},0.1)'))
  ),
  mild_traffic = list(
    lineStyle = list(width = 0,
                     color = macaroni_and_cheese
    ),
    areaStyle = styleArea(color1 = glue::glue('rgba({glue::glue_collapse(col2rgb(macaroni_and_cheese), sep = ",")},1)'),
                          color2 = glue::glue('rgba({glue::glue_collapse(col2rgb(macaroni_and_cheese), sep = ",")},0.1)'))
  ),

  high_traffic = list(
    lineStyle = list(width = 0,
                     color = pastel_red
    ),
    areaStyle = styleArea(color1 = glue::glue('rgba({glue::glue_collapse(col2rgb(pastel_red), sep = ",")},1)'),
                          color2 = glue::glue('rgba({glue::glue_collapse(col2rgb(pastel_red), sep = ",")},0.1)'))
  )
)


