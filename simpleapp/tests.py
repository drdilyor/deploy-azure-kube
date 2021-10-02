import json

from django.http import JsonResponse
from django.test import TestCase


class IndexTestCase(TestCase):
    def test_says_hello(self) -> None:
        response: JsonResponse = self.client.get('/')
        json_ = json.loads(response.content)
        self.assertEquals(response.status_code, 200)
        self.assertIn('message', json_)
        self.assertIn('hello', json_['message'])
