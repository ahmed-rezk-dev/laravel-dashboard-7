<?php

namespace App\Http\Middleware;

use URL;
use Closure;

class Domain
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure                 $next
     *
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (env('APP_ENV') === 'local') {
            $dom = 'http://127.0.0.1:8000';
        } else {
            $dom = 'dashphp.herokuapp.com';
        }
        if (URL::to('/') !== $dom) {
            abort(400);
        }

        return $next($request);
    }
}
