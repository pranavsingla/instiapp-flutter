// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiclient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _InstiAppApi implements InstiAppApi {
  _InstiAppApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.insti.app/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Hostel>> getHostelMess() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Hostel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/mess',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Hostel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Session> passwordLogin(username, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Session>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pass-login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Session> passwordLoginFcm(username, password, fcmId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'username': username,
      r'password': password,
      r'fcm_id': fcmId
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Session>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pass-login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Session> login(code, redir) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'code': code, r'redir': redir};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Session>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Session.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<PlacementBlogPost>> getPlacementBlogFeed(
      sessionId, from, number, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'from': from,
      r'num': number,
      r'query': query
    };
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<PlacementBlogPost>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/placement-blog',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            PlacementBlogPost.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<ExternalBlogPost>> getExternalBlogFeed(
      sessionId, from, number, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'from': from,
      r'num': number,
      r'query': query
    };
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ExternalBlogPost>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/external-blog',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map(
            (dynamic i) => ExternalBlogPost.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<TrainingBlogPost>> getTrainingBlogFeed(
      sessionID, from, num, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'from': from,
      r'num': num,
      r'query': query
    };
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<TrainingBlogPost>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/training-blog',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map(
            (dynamic i) => TrainingBlogPost.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Event> getEvent(sessionId, uuid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Event>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/events/${uuid}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Event.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NewsFeedResponse> getNewsFeed(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NewsFeedResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/events',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NewsFeedResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NewsFeedResponse> getEventsBetweenDates(sessionId, start, end) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'start': start, r'end': end};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NewsFeedResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/events',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NewsFeedResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<MessCalEvent>> getMessEventsBetweenDates(
      sessionId, start, end) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'start': start, r'end': end};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<MessCalEvent>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/getUserMess',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => MessCalEvent.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<EventCreateResponse> createEvent(sessionId, eventCreateRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(eventCreateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<EventCreateResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/events',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = EventCreateResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Venue>> getAllVenues() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Venue>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/locations',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Venue.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Venue>> getVenue(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Venue>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/locations/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Venue.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<User> getUser(sessionId, uuid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/users/${uuid}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Body> getBody(sessionId, uuid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<Body>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/bodies/${uuid}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Body.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Body>> getAllBodies(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Body>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/bodies',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Body.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> updateBodyFollowing(sessionID, eventID, action) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'action': action};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/bodies/${eventID}/follow',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<ImageUploadResponse> uploadImage(sessionID, imageUploadRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(imageUploadRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ImageUploadResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/upload',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ImageUploadResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<User> getUserMe(sessionID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-me',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> updateUserEventStatus(sessionID, eventID, status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'status': status};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-me/ues/${eventID}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> updateUserNewsReaction(sessionID, postID, reaction) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'reaction': reaction};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-me/unr/${postID}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<User> patchFCMUserMe(sessionID, userFCMPatchRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(userFCMPatchRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-me',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<User> patchSCNUserMe(sessionID, userSCNPatchRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(userSCNPatchRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-me',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<NewsArticle>> getNews(sessionID, from, num, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'from': from,
      r'num': num,
      r'query': query
    };
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<NewsArticle>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/news',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => NewsArticle.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Notification>> getNotifications(sessionID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Notification>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/notifications',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Notification.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> markNotificationRead(sessionID, notificationID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/notifications/read/${notificationID}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> markAllNotificationsRead(sessionID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/notifications/read',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> logout(sessionID) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/logout',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<ExploreResponse> search(sessionID, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ExploreResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ExploreResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ExploreResponse> searchType(sessionID, query, type) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query, r'types': type};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ExploreResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ExploreResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Complaint>> getAllComplaints(
      sessionId, from, number, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'from': from,
      r'num': number,
      r'search': query
    };
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Complaint>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/complaints',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Complaint.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Complaint>> getUserComplaints(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Complaint>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/complaints?filter=me',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Complaint.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Complaint> getComplaint(sessionId, complaintId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Complaint>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/complaints/${complaintId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Complaint.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Complaint> upVote(sessionId, complaintId, count) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'action': count};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Complaint>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/venter/complaints/${complaintId}/upvote',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Complaint.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Complaint> subscribleToComplaint(sessionId, complaintId, count) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'action': count};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Complaint>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/venter/complaints/${complaintId}/subscribe',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Complaint.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Complaint> postComplaint(sessionId, complaintCreateRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(complaintCreateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Complaint>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/complaints',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Complaint.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Comment> postComment(
      sessionId, complaintId, commentCreateRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(commentCreateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Comment>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/venter/complaints/${complaintId}/comments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Comment.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Comment> updateComment(
      sessionId, commentId, commentCreateRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(commentCreateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Comment>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/comments/${commentId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Comment.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> deleteComment(sessionId, commentId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/venter/comments/${commentId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<List<TagUri>> getAllTags(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<TagUri>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/venter/tags',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => TagUri.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<AchievementCreateResponse> postForm(
      sessionId, achievementCreateRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(achievementCreateRequest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AchievementCreateResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/achievements',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AchievementCreateResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SecretResponse> postAchievementOffer(sessionId, id, secret) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(secret.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SecretResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/achievements-offer/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SecretResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SecretResponse> postInterests(sessionId, interest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(interest.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SecretResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/interests',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SecretResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SecretResponse> postDelInterests(sessionId, title) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SecretResponse>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/interests/${title}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SecretResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Achievement>> getYourAchievements(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Achievement>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/achievements',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Achievement.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> toggleHidden(sessionID, id, hidden) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(hidden.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/achievements/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<List<Achievement>> getBodyAchievements(sessionId, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Achievement>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/achievements-body/${id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Achievement.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> dismissAchievement(sessionID, id, achievement) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(achievement.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'PUT', headers: _headers, extra: _extra)
            .compose(_dio.options, '/achievements/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<void> deleteAchievement(sessionID, id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/achievements/:id',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<List<Query>> getQueries(sessionID, query, category) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': query,
      r'category': category
    };
    final _headers = <String, dynamic>{r'Cookie': sessionID};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Query>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/query',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Query.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<void> postFAQ(sessionId, request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    await _dio.fetch<void>(_setStreamType<void>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/query/add',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<List<String>> getQueryCategories(sessionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Cookie': sessionId};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<String>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/query/categories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String>();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
