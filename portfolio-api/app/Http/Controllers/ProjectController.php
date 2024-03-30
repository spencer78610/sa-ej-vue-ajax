<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Project;


class ProjectController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
         $projects = Project::all();
         return response()->json($projects);
     }

     public function getOne($id) {
         $project = Project::find($id);
         return response()->json($project);
     }

     public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'author_id' => 'required',
            'published_date' => 'required|date',
            'project_image' => 'required'
        ]);
        $project = Project::create($request->all());
        return response()->json($project, 201);
    }
    
    
    
    public function update(Request $request, $id) {
        $project = Project::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required',
            'author_id' => 'required',
            'published_date' => 'required|date',
            'project_image' => 'required'
        ]);
        $project->update($request->all());
        return response()->json($project);
    }
    
    
    public function delete($id) {
        $project = Project::findOrFail($id);
        $project->delete();
        return response()->json(null, 204);
    }
    
    
 

}
