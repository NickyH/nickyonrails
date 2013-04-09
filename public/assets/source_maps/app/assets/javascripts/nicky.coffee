class Home
  @document_ready: ->
    $('#recipezy-header').click(Home.show_recipezy)
    $('#flickr-header').click(Home.show_flickr)
    $('#movie-header').click(Home.show_movie)
    $('#movie-header').click(Home.show_movie)
    $('.myheader').hide().fadeIn( 4000 )
    $('.mysubheader').hide().slideDown( 4000 )
    $('.mysubheader2').hide().fadeIn( 4000 )

    $('.project-headers').on('click', 'a[data-project-name]', Home.show_project)

    $('.moviez').click(Home.show_moviez)
    $('.flickr').click(Home.show_flickr)
    $('.team8').click(Home.show_team8)
    $('.interviewr').click(Home.show_interviewr)

  @show_project: ->
    project = $(this).data('project-name')
    console.log(project)
    settings =
      dataType: 'script'
      type: "get"
      url: "/home/#{project}"
    $.ajax(settings)


$(document).ready(Home.document_ready)
