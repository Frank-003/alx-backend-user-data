[Got]
Traceback (most recent call last):
  File "/usr/local/lib/python3.7/site-packages/urllib3/connection.py", line 170, in _new_conn
    (self._dns_host, self.port), self.timeout, **extra_kw
  File "/usr/local/lib/python3.7/site-packages/urllib3/util/connection.py", line 96, in create_connection
    raise err
  File "/usr/local/lib/python3.7/site-packages/urllib3/util/connection.py", line 86, in create_connection
    sock.connect(sa)
ConnectionRefusedError: [Errno 111] Connection refused

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/lib/python3.7/site-packages/urllib3/connectionpool.py", line 706, in urlopen
    chunked=chunked,
  File "/usr/local/lib/python3.7/site-packages/urllib3/connectionpool.py", line 394, in _make_request
    conn.request(method, url, **httplib_request_kw)
  File "/usr/local/lib/python3.7/site-packages/urllib3/connection.py", line 234, in request
    super(HTTPConnection, self).request(method, url, body=body, headers=headers)
  File "/usr/local/lib/python3.7/http/client.py", line 1229, in request
    self._send_request(method, url, body, headers, encode_chunked)
  File "/usr/local/lib/python3.7/http/client.py", line 1275, in _send_request
    self.endheaders(body, encode_chunked=encode_chunked)
  File "/usr/local/lib/python3.7/http/client.py", line 1224, in endheaders
    self._send_output(message_body, encode_chunked=encode_chunked)
  File "/usr/local/lib/python3.7/http/client.py", line 1016, in _send_output
    self.send(msg)
  File "/usr/local/lib/python3.7/http/client.py", line 956, in send
    self.connect()
  File "/usr/local/lib/python3.7/site-packages/urllib3/connection.py", line 200, in connect
    conn = self._new_conn()
  File "/usr/local/lib/python3.7/site-packages/urllib3/connection.py", line 182, in _new_conn
    self, "Failed to establish a new connection: %s" % e
urllib3.exceptions.NewConnectionError: <urllib3.connection.HTTPConnection object at 0x7fa76a974da0>: Failed to establish a new connection: [Errno 111] Connection refused

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/lib/python3.7/site-packages/requests/adapters.py", line 449, in send
    timeout=timeout
  File "/usr/local/lib/python3.7/site-packages/urllib3/connectionpool.py", line 756, in urlopen
    method, url, error=e, _pool=self, _stacktrace=sys.exc_info()[2]
  File "/usr/local/lib/python3.7/site-packages/urllib3/util/retry.py", line 573, in increment
    raise MaxRetryError(_pool, url, error or ResponseError(cause))
urllib3.exceptions.MaxRetryError: HTTPConnectionPool(host='0.0.0.0', port=5100): Max retries exceeded with url: /api/v1/status (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at 0x7fa76a974da0>: Failed to establish a new connection: [Errno 111] Connection refused'))

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "./main.py", line 7, in <module>
    r = requests.get('http://0.0.0.0:5100/api/v1/status')
  File "/usr/local/lib/python3.7/site-packages/requests/api.py", line 76, in get
    return request('get', url, params=params, **kwargs)
  File "/usr/local/lib/python3.7/site-packages/requests/api.py", line 61, in request
    return session.request(method=method, url=url, **kwargs)
  File "/usr/local/lib/python3.7/site-packages/requests/sessions.py", line 542, in request
    resp = self.send(prep, **send_kwargs)
  File "/usr/local/lib/python3.7/site-packages/requests/sessions.py", line 655, in send
    r = adapter.send(request, **kwargs)
  File "/usr/local/lib/python3.7/site-packages/requests/adapters.py", line 516, in send
    raise ConnectionError(e, request=request)
requests.exceptions.ConnectionError: HTTPConnectionPool(host='0.0.0.0', port=5100): Max retries exceeded with url: /api/v1/status (Caused by NewConnectionError('<urllib3.connection.HTTPConnection object at 0x7fa76a974da0>: Failed to establish a new connection: [Errno 111] Connection refused'))

(4084 chars long)

[Expected]
OK
(2 chars long)
