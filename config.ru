require_relative './config/environment'
use Rack::MethodOverride

use SessionController

use LessonController

use UserController

use HubController

use TablesController

use CommentController

run ApplicationController