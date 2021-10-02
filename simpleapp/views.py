from django.http import HttpRequest, JsonResponse, HttpResponse


def index(request: HttpRequest) -> HttpResponse:
    if request.method == 'GET':
        return JsonResponse({'message': 'hello world'})
    else:
        return HttpResponse(status=405)  # Method not allowed
