# Julia wrapper for header: /usr/include/slurm/slurm.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function slurm_strerror(errnum::Cint)
    ccall((:slurm_strerror,libslurm),Cstring,(Cint,),errnum)
end

function slurm_seterrno(errnum::Cint)
    ccall((:slurm_seterrno,libslurm),Void,(Cint,),errnum)
end

function slurm_get_errno()
    ccall((:slurm_get_errno,libslurm),Cint,())
end

function slurm_perror(msg)
    ccall((:slurm_perror,libslurm),Void,(Cstring,),msg)
end

function slurm_hostlist_create(hostlist)
    ccall((:slurm_hostlist_create,libslurm),hostlist_t,(Cstring,),hostlist)
end

function slurm_hostlist_count(hl::hostlist_t)
    ccall((:slurm_hostlist_count,libslurm),Cint,(hostlist_t,),hl)
end

function slurm_hostlist_destroy(hl::hostlist_t)
    ccall((:slurm_hostlist_destroy,libslurm),Void,(hostlist_t,),hl)
end

function slurm_hostlist_find(hl::hostlist_t,hostname)
    ccall((:slurm_hostlist_find,libslurm),Cint,(hostlist_t,Cstring),hl,hostname)
end

function slurm_hostlist_push(hl::hostlist_t,hosts)
    ccall((:slurm_hostlist_push,libslurm),Cint,(hostlist_t,Cstring),hl,hosts)
end

function slurm_hostlist_push_host(hl::hostlist_t,host)
    ccall((:slurm_hostlist_push_host,libslurm),Cint,(hostlist_t,Cstring),hl,host)
end

function slurm_hostlist_ranged_string(hl::hostlist_t,n::Cint,buf)
    ccall((:slurm_hostlist_ranged_string,libslurm),ssize_t,(hostlist_t,Cint,Cstring),hl,n,buf)
end

function slurm_hostlist_ranged_string_malloc(hl::hostlist_t)
    ccall((:slurm_hostlist_ranged_string_malloc,libslurm),Cstring,(hostlist_t,),hl)
end

function slurm_hostlist_ranged_string_xmalloc(hl::hostlist_t)
    ccall((:slurm_hostlist_ranged_string_xmalloc,libslurm),Cstring,(hostlist_t,),hl)
end

function slurm_hostlist_shift(hl::hostlist_t)
    ccall((:slurm_hostlist_shift,libslurm),Cstring,(hostlist_t,),hl)
end

function slurm_hostlist_uniq(hl::hostlist_t)
    ccall((:slurm_hostlist_uniq,libslurm),Void,(hostlist_t,),hl)
end

function slurm_list_append(l::List,x)
    ccall((:slurm_list_append,libslurm),Ptr{Void},(List,Ptr{Void}),l,x)
end

function slurm_list_count(l::List)
    ccall((:slurm_list_count,libslurm),Cint,(List,),l)
end

function slurm_list_create(f::ListDelF)
    ccall((:slurm_list_create,libslurm),List,(ListDelF,),f)
end

function slurm_list_destroy(l::List)
    ccall((:slurm_list_destroy,libslurm),Void,(List,),l)
end

function slurm_list_find(i::ListIterator,f::ListFindF,key)
    ccall((:slurm_list_find,libslurm),Ptr{Void},(ListIterator,ListFindF,Ptr{Void}),i,f,key)
end

function slurm_list_is_empty(l::List)
    ccall((:slurm_list_is_empty,libslurm),Cint,(List,),l)
end

function slurm_list_iterator_create(l::List)
    ccall((:slurm_list_iterator_create,libslurm),ListIterator,(List,),l)
end

function slurm_list_iterator_reset(i::ListIterator)
    ccall((:slurm_list_iterator_reset,libslurm),Void,(ListIterator,),i)
end

function slurm_list_iterator_destroy(i::ListIterator)
    ccall((:slurm_list_iterator_destroy,libslurm),Void,(ListIterator,),i)
end

function slurm_list_next(i::ListIterator)
    ccall((:slurm_list_next,libslurm),Ptr{Void},(ListIterator,),i)
end

function slurm_list_sort(l::List,f::ListCmpF)
    ccall((:slurm_list_sort,libslurm),Void,(List,ListCmpF),l,f)
end

function slurm_list_pop(l::List)
    ccall((:slurm_list_pop,libslurm),Ptr{Void},(List,),l)
end

function slurm_print_block_info_msg(out,info_ptr,one_liner::Cint)
    ccall((:slurm_print_block_info_msg,libslurm),Void,(Ptr{FILE},Ptr{block_info_msg_t},Cint),out,info_ptr,one_liner)
end

function slurm_print_block_info(out,bg_info_ptr,one_liner::Cint)
    ccall((:slurm_print_block_info,libslurm),Void,(Ptr{FILE},Ptr{block_info_t},Cint),out,bg_info_ptr,one_liner)
end

function slurm_sprint_block_info(bg_info_ptr,one_liner::Cint)
    ccall((:slurm_sprint_block_info,libslurm),Cstring,(Ptr{block_info_t},Cint),bg_info_ptr,one_liner)
end

function slurm_load_block_info(update_time::time_t,block_info_msg_pptr,show_flags::UInt16)
    ccall((:slurm_load_block_info,libslurm),Cint,(time_t,Ptr{Ptr{block_info_msg_t}},UInt16),update_time,block_info_msg_pptr,show_flags)
end

function slurm_free_block_info_msg(block_info_msg)
    ccall((:slurm_free_block_info_msg,libslurm),Void,(Ptr{block_info_msg_t},),block_info_msg)
end

function slurm_update_block(block_msg)
    ccall((:slurm_update_block,libslurm),Cint,(Ptr{update_block_msg_t},),block_msg)
end

function slurm_init_update_block_msg(update_block_msg)
    ccall((:slurm_init_update_block_msg,libslurm),Void,(Ptr{update_block_msg_t},),update_block_msg)
end

function slurm_init_job_desc_msg(job_desc_msg)
    ccall((:slurm_init_job_desc_msg,libslurm),Void,(Ptr{job_desc_msg_t},),job_desc_msg)
end

function slurm_allocate_resources(job_desc_msg,job_alloc_resp_msg)
    ccall((:slurm_allocate_resources,libslurm),Cint,(Ptr{job_desc_msg_t},Ptr{Ptr{resource_allocation_response_msg_t}}),job_desc_msg,job_alloc_resp_msg)
end

function slurm_allocate_resources_blocking(user_req,timeout::time_t,pending_callback)
    ccall((:slurm_allocate_resources_blocking,libslurm),Ptr{resource_allocation_response_msg_t},(Ptr{job_desc_msg_t},time_t,Ptr{Void}),user_req,timeout,pending_callback)
end

function slurm_free_resource_allocation_response_msg(msg)
    ccall((:slurm_free_resource_allocation_response_msg,libslurm),Void,(Ptr{resource_allocation_response_msg_t},),msg)
end

function slurm_free_job_alloc_info_response_msg(msg)
    ccall((:slurm_free_job_alloc_info_response_msg,libslurm),Void,(Ptr{job_alloc_info_response_msg_t},),msg)
end

function slurm_allocation_lookup(job_id::UInt32,info)
    ccall((:slurm_allocation_lookup,libslurm),Cint,(UInt32,Ptr{Ptr{job_alloc_info_response_msg_t}}),job_id,info)
end

function slurm_allocation_lookup_lite(job_id::UInt32,info)
    ccall((:slurm_allocation_lookup_lite,libslurm),Cint,(UInt32,Ptr{Ptr{resource_allocation_response_msg_t}}),job_id,info)
end

function slurm_read_hostfile(filename,n::Cint)
    ccall((:slurm_read_hostfile,libslurm),Cstring,(Cstring,Cint),filename,n)
end

function slurm_allocation_msg_thr_create(port,callbacks)
    ccall((:slurm_allocation_msg_thr_create,libslurm),Ptr{allocation_msg_thread_t},(Ptr{UInt16},Ptr{slurm_allocation_callbacks_t}),port,callbacks)
end

function slurm_allocation_msg_thr_destroy(msg_thr)
    ccall((:slurm_allocation_msg_thr_destroy,libslurm),Void,(Ptr{allocation_msg_thread_t},),msg_thr)
end

function slurm_submit_batch_job(job_desc_msg,slurm_alloc_msg)
    ccall((:slurm_submit_batch_job,libslurm),Cint,(Ptr{job_desc_msg_t},Ptr{Ptr{submit_response_msg_t}}),job_desc_msg,slurm_alloc_msg)
end

function slurm_free_submit_response_response_msg(msg)
    ccall((:slurm_free_submit_response_response_msg,libslurm),Void,(Ptr{submit_response_msg_t},),msg)
end

function slurm_job_will_run(job_desc_msg)
    ccall((:slurm_job_will_run,libslurm),Cint,(Ptr{job_desc_msg_t},),job_desc_msg)
end

function slurm_job_will_run2(req,will_run_resp)
    ccall((:slurm_job_will_run2,libslurm),Cint,(Ptr{job_desc_msg_t},Ptr{Ptr{will_run_response_msg_t}}),req,will_run_resp)
end

function slurm_sbcast_lookup(job_id::UInt32,step_id::UInt32,info)
    ccall((:slurm_sbcast_lookup,libslurm),Cint,(UInt32,UInt32,Ptr{Ptr{job_sbcast_cred_msg_t}}),job_id,step_id,info)
end

function slurm_free_sbcast_cred_msg(msg)
    ccall((:slurm_free_sbcast_cred_msg,libslurm),Void,(Ptr{job_sbcast_cred_msg_t},),msg)
end

function slurm_load_licenses(arg1::time_t,arg2,arg3::UInt16)
    ccall((:slurm_load_licenses,libslurm),Cint,(time_t,Ptr{Ptr{license_info_msg_t}},UInt16),arg1,arg2,arg3)
end

function slurm_free_license_info_msg(arg1)
    ccall((:slurm_free_license_info_msg,libslurm),Void,(Ptr{license_info_msg_t},),arg1)
end

function slurm_load_assoc_mgr_info(arg1,arg2)
    ccall((:slurm_load_assoc_mgr_info,libslurm),Cint,(Ptr{assoc_mgr_info_request_msg_t},Ptr{Ptr{assoc_mgr_info_msg_t}}),arg1,arg2)
end

function slurm_free_assoc_mgr_info_msg(arg1)
    ccall((:slurm_free_assoc_mgr_info_msg,libslurm),Void,(Ptr{assoc_mgr_info_msg_t},),arg1)
end

function slurm_free_assoc_mgr_info_request_members(arg1)
    ccall((:slurm_free_assoc_mgr_info_request_members,libslurm),Void,(Ptr{assoc_mgr_info_request_msg_t},),arg1)
end

function slurm_free_assoc_mgr_info_request_msg(arg1)
    ccall((:slurm_free_assoc_mgr_info_request_msg,libslurm),Void,(Ptr{assoc_mgr_info_request_msg_t},),arg1)
end

function slurm_kill_job(job_id::UInt32,signal::UInt16,flags::UInt16)
    ccall((:slurm_kill_job,libslurm),Cint,(UInt32,UInt16,UInt16),job_id,signal,flags)
end

function slurm_kill_job_step(job_id::UInt32,step_id::UInt32,signal::UInt16)
    ccall((:slurm_kill_job_step,libslurm),Cint,(UInt32,UInt32,UInt16),job_id,step_id,signal)
end

function slurm_kill_job2(job_id,signal::UInt16,flags::UInt16)
    ccall((:slurm_kill_job2,libslurm),Cint,(Cstring,UInt16,UInt16),job_id,signal,flags)
end

function slurm_signal_job(job_id::UInt32,signal::UInt16)
    ccall((:slurm_signal_job,libslurm),Cint,(UInt32,UInt16),job_id,signal)
end

function slurm_signal_job_step(job_id::UInt32,step_id::UInt32,signal::UInt32)
    ccall((:slurm_signal_job_step,libslurm),Cint,(UInt32,UInt32,UInt32),job_id,step_id,signal)
end

function slurm_complete_job(job_id::UInt32,job_return_code::UInt32)
    ccall((:slurm_complete_job,libslurm),Cint,(UInt32,UInt32),job_id,job_return_code)
end

function slurm_terminate_job_step(job_id::UInt32,step_id::UInt32)
    ccall((:slurm_terminate_job_step,libslurm),Cint,(UInt32,UInt32),job_id,step_id)
end

function slurm_step_ctx_params_t_init(ptr)
    ccall((:slurm_step_ctx_params_t_init,libslurm),Void,(Ptr{slurm_step_ctx_params_t},),ptr)
end

function slurm_step_ctx_create(step_params)
    ccall((:slurm_step_ctx_create,libslurm),Ptr{slurm_step_ctx_t},(Ptr{slurm_step_ctx_params_t},),step_params)
end

function slurm_step_ctx_create_timeout(step_params,timeout::Cint)
    ccall((:slurm_step_ctx_create_timeout,libslurm),Ptr{slurm_step_ctx_t},(Ptr{slurm_step_ctx_params_t},Cint),step_params,timeout)
end

function slurm_step_ctx_create_no_alloc(step_params,step_id::UInt32)
    ccall((:slurm_step_ctx_create_no_alloc,libslurm),Ptr{slurm_step_ctx_t},(Ptr{slurm_step_ctx_params_t},UInt32),step_params,step_id)
end

function slurm_jobinfo_ctx_get(jobinfo,data_type::Cint,data)
    ccall((:slurm_jobinfo_ctx_get,libslurm),Cint,(Ptr{switch_jobinfo_t},Cint,Ptr{Void}),jobinfo,data_type,data)
end

function slurm_step_ctx_daemon_per_node_hack(ctx,node_list,node_cnt::UInt32,curr_task_num)
    ccall((:slurm_step_ctx_daemon_per_node_hack,libslurm),Cint,(Ptr{slurm_step_ctx_t},Cstring,UInt32,Ptr{UInt32}),ctx,node_list,node_cnt,curr_task_num)
end

function slurm_step_ctx_destroy(ctx)
    ccall((:slurm_step_ctx_destroy,libslurm),Cint,(Ptr{slurm_step_ctx_t},),ctx)
end

function slurm_step_launch_params_t_init(ptr)
    ccall((:slurm_step_launch_params_t_init,libslurm),Void,(Ptr{slurm_step_launch_params_t},),ptr)
end

function slurm_step_launch(ctx,params,callbacks)
    ccall((:slurm_step_launch,libslurm),Cint,(Ptr{slurm_step_ctx_t},Ptr{slurm_step_launch_params_t},Ptr{slurm_step_launch_callbacks_t}),ctx,params,callbacks)
end

function slurm_step_launch_add(ctx,params,node_list,start_nodeid::Cint)
    ccall((:slurm_step_launch_add,libslurm),Cint,(Ptr{slurm_step_ctx_t},Ptr{slurm_step_launch_params_t},Cstring,Cint),ctx,params,node_list,start_nodeid)
end

function slurm_step_launch_wait_start(ctx)
    ccall((:slurm_step_launch_wait_start,libslurm),Cint,(Ptr{slurm_step_ctx_t},),ctx)
end

function slurm_step_launch_wait_finish(ctx)
    ccall((:slurm_step_launch_wait_finish,libslurm),Void,(Ptr{slurm_step_ctx_t},),ctx)
end

function slurm_step_launch_abort(ctx)
    ccall((:slurm_step_launch_abort,libslurm),Void,(Ptr{slurm_step_ctx_t},),ctx)
end

function slurm_step_launch_fwd_signal(ctx,signo::Cint)
    ccall((:slurm_step_launch_fwd_signal,libslurm),Void,(Ptr{slurm_step_ctx_t},Cint),ctx,signo)
end

function slurm_step_launch_fwd_wake(ctx)
    ccall((:slurm_step_launch_fwd_wake,libslurm),Void,(Ptr{slurm_step_ctx_t},),ctx)
end

function slurm_mpi_plugin_init(plugin_name)
    ccall((:slurm_mpi_plugin_init,libslurm),Cint,(Cstring,),plugin_name)
end

function slurm_api_version()
    ccall((:slurm_api_version,libslurm),Clong,())
end

function slurm_load_ctl_conf(update_time::time_t,slurm_ctl_conf_ptr)
    ccall((:slurm_load_ctl_conf,libslurm),Cint,(time_t,Ptr{Ptr{slurm_ctl_conf_t}}),update_time,slurm_ctl_conf_ptr)
end

function slurm_free_ctl_conf(slurm_ctl_conf_ptr)
    ccall((:slurm_free_ctl_conf,libslurm),Void,(Ptr{slurm_ctl_conf_t},),slurm_ctl_conf_ptr)
end

function slurm_print_ctl_conf(out,slurm_ctl_conf_ptr)
    ccall((:slurm_print_ctl_conf,libslurm),Void,(Ptr{FILE},Ptr{slurm_ctl_conf_t}),out,slurm_ctl_conf_ptr)
end

function slurm_write_ctl_conf(slurm_ctl_conf_ptr,node_info_ptr,part_info_ptr)
    ccall((:slurm_write_ctl_conf,libslurm),Void,(Ptr{slurm_ctl_conf_t},Ptr{node_info_msg_t},Ptr{partition_info_msg_t}),slurm_ctl_conf_ptr,node_info_ptr,part_info_ptr)
end

function slurm_ctl_conf_2_key_pairs(slurm_ctl_conf_ptr)
    ccall((:slurm_ctl_conf_2_key_pairs,libslurm),Ptr{Void},(Ptr{slurm_ctl_conf_t},),slurm_ctl_conf_ptr)
end

function slurm_print_key_pairs(out,key_pairs,title)
    ccall((:slurm_print_key_pairs,libslurm),Void,(Ptr{FILE},Ptr{Void},Cstring),out,key_pairs,title)
end

function slurm_load_slurmd_status(slurmd_status_ptr)
    ccall((:slurm_load_slurmd_status,libslurm),Cint,(Ptr{Ptr{slurmd_status_t}},),slurmd_status_ptr)
end

function slurm_free_slurmd_status(slurmd_status_ptr)
    ccall((:slurm_free_slurmd_status,libslurm),Void,(Ptr{slurmd_status_t},),slurmd_status_ptr)
end

function slurm_print_slurmd_status(out,slurmd_status_ptr)
    ccall((:slurm_print_slurmd_status,libslurm),Void,(Ptr{FILE},Ptr{slurmd_status_t}),out,slurmd_status_ptr)
end

function slurm_init_update_step_msg(step_msg)
    ccall((:slurm_init_update_step_msg,libslurm),Void,(Ptr{step_update_request_msg_t},),step_msg)
end

function slurm_get_statistics(buf,req)
    ccall((:slurm_get_statistics,libslurm),Cint,(Ptr{Ptr{stats_info_response_msg_t}},Ptr{stats_info_request_msg_t}),buf,req)
end

function slurm_reset_statistics(req)
    ccall((:slurm_reset_statistics,libslurm),Cint,(Ptr{stats_info_request_msg_t},),req)
end

function slurm_job_cpus_allocated_on_node_id(job_resrcs_ptr,node_id::Cint)
    ccall((:slurm_job_cpus_allocated_on_node_id,libslurm),Cint,(Ptr{job_resources_t},Cint),job_resrcs_ptr,node_id)
end

function slurm_job_cpus_allocated_on_node(job_resrcs_ptr,node_name)
    ccall((:slurm_job_cpus_allocated_on_node,libslurm),Cint,(Ptr{job_resources_t},Cstring),job_resrcs_ptr,node_name)
end

function slurm_job_cpus_allocated_str_on_node_id(cpus,cpus_len::Cint,job_resrcs_ptr,node_id::Cint)
    ccall((:slurm_job_cpus_allocated_str_on_node_id,libslurm),Cint,(Cstring,Cint,Ptr{job_resources_t},Cint),cpus,cpus_len,job_resrcs_ptr,node_id)
end

function slurm_job_cpus_allocated_str_on_node(cpus,cpus_len::Cint,job_resrcs_ptr,node_name)
    ccall((:slurm_job_cpus_allocated_str_on_node,libslurm),Cint,(Cstring,Cint,Ptr{job_resources_t},Cstring),cpus,cpus_len,job_resrcs_ptr,node_name)
end

function slurm_free_job_info_msg(job_buffer_ptr)
    ccall((:slurm_free_job_info_msg,libslurm),Void,(Ptr{job_info_msg_t},),job_buffer_ptr)
end

function slurm_get_end_time(jobid::UInt32,end_time_ptr)
    ccall((:slurm_get_end_time,libslurm),Cint,(UInt32,Ptr{time_t}),jobid,end_time_ptr)
end

function slurm_get_job_stderr(buf,buf_size::Cint,job_ptr)
    ccall((:slurm_get_job_stderr,libslurm),Void,(Cstring,Cint,Ptr{job_info_t}),buf,buf_size,job_ptr)
end

function slurm_get_job_stdin(buf,buf_size::Cint,job_ptr)
    ccall((:slurm_get_job_stdin,libslurm),Void,(Cstring,Cint,Ptr{job_info_t}),buf,buf_size,job_ptr)
end

function slurm_get_job_stdout(buf,buf_size::Cint,job_ptr)
    ccall((:slurm_get_job_stdout,libslurm),Void,(Cstring,Cint,Ptr{job_info_t}),buf,buf_size,job_ptr)
end

function slurm_get_rem_time(jobid::UInt32)
    ccall((:slurm_get_rem_time,libslurm),Clong,(UInt32,),jobid)
end

function slurm_job_node_ready(job_id::UInt32)
    ccall((:slurm_job_node_ready,libslurm),Cint,(UInt32,),job_id)
end

function slurm_load_job(resp,job_id::UInt32,show_flags::UInt16)
    ccall((:slurm_load_job,libslurm),Cint,(Ptr{Ptr{job_info_msg_t}},UInt32,UInt16),resp,job_id,show_flags)
end

function slurm_load_job_user(job_info_msg_pptr,user_id::UInt32,show_flags::UInt16)
    ccall((:slurm_load_job_user,libslurm),Cint,(Ptr{Ptr{job_info_msg_t}},UInt32,UInt16),job_info_msg_pptr,user_id,show_flags)
end

function slurm_load_jobs(update_time::time_t,job_info_msg_pptr,show_flags::UInt16)
    ccall((:slurm_load_jobs,libslurm),Cint,(time_t,Ptr{Ptr{job_info_msg_t}},UInt16),update_time,job_info_msg_pptr,show_flags)
end

function slurm_notify_job(job_id::UInt32,message)
    ccall((:slurm_notify_job,libslurm),Cint,(UInt32,Cstring),job_id,message)
end

function slurm_pid2jobid(job_pid::pid_t,job_id_ptr)
    ccall((:slurm_pid2jobid,libslurm),Cint,(pid_t,Ptr{UInt32}),job_pid,job_id_ptr)
end

function slurm_print_job_info(out,job_ptr,one_liner::Cint)
    ccall((:slurm_print_job_info,libslurm),Void,(Ptr{FILE},Ptr{slurm_job_info_t},Cint),out,job_ptr,one_liner)
end

function slurm_print_job_info_msg(out,job_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_job_info_msg,libslurm),Void,(Ptr{FILE},Ptr{job_info_msg_t},Cint),out,job_info_msg_ptr,one_liner)
end

function slurm_sprint_job_info(job_ptr,one_liner::Cint)
    ccall((:slurm_sprint_job_info,libslurm),Cstring,(Ptr{slurm_job_info_t},Cint),job_ptr,one_liner)
end

function slurm_update_job(job_msg)
    ccall((:slurm_update_job,libslurm),Cint,(Ptr{job_desc_msg_t},),job_msg)
end

function slurm_update_job2(job_msg,resp)
    ccall((:slurm_update_job2,libslurm),Cint,(Ptr{job_desc_msg_t},Ptr{Ptr{job_array_resp_msg_t}}),job_msg,resp)
end

function slurm_xlate_job_id(job_id_str)
    ccall((:slurm_xlate_job_id,libslurm),UInt32,(Cstring,),job_id_str)
end

function slurm_get_job_steps(update_time::time_t,job_id::UInt32,step_id::UInt32,step_response_pptr,show_flags::UInt16)
    ccall((:slurm_get_job_steps,libslurm),Cint,(time_t,UInt32,UInt32,Ptr{Ptr{job_step_info_response_msg_t}},UInt16),update_time,job_id,step_id,step_response_pptr,show_flags)
end

function slurm_free_job_step_info_response_msg(msg)
    ccall((:slurm_free_job_step_info_response_msg,libslurm),Void,(Ptr{job_step_info_response_msg_t},),msg)
end

function slurm_print_job_step_info_msg(out,job_step_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_job_step_info_msg,libslurm),Void,(Ptr{FILE},Ptr{job_step_info_response_msg_t},Cint),out,job_step_info_msg_ptr,one_liner)
end

function slurm_print_job_step_info(out,step_ptr,one_liner::Cint)
    ccall((:slurm_print_job_step_info,libslurm),Void,(Ptr{FILE},Ptr{job_step_info_t},Cint),out,step_ptr,one_liner)
end

function slurm_job_step_layout_get(job_id::UInt32,step_id::UInt32)
    ccall((:slurm_job_step_layout_get,libslurm),Ptr{slurm_step_layout_t},(UInt32,UInt32),job_id,step_id)
end

function slurm_sprint_job_step_info(step_ptr,one_liner::Cint)
    ccall((:slurm_sprint_job_step_info,libslurm),Cstring,(Ptr{job_step_info_t},Cint),step_ptr,one_liner)
end

function slurm_job_step_stat(job_id::UInt32,step_id::UInt32,node_list,use_protocol_ver::UInt16,resp)
    ccall((:slurm_job_step_stat,libslurm),Cint,(UInt32,UInt32,Cstring,UInt16,Ptr{Ptr{job_step_stat_response_msg_t}}),job_id,step_id,node_list,use_protocol_ver,resp)
end

function slurm_job_step_get_pids(job_id::UInt32,step_id::UInt32,node_list,resp)
    ccall((:slurm_job_step_get_pids,libslurm),Cint,(UInt32,UInt32,Cstring,Ptr{Ptr{job_step_pids_response_msg_t}}),job_id,step_id,node_list,resp)
end

function slurm_job_step_layout_free(layout)
    ccall((:slurm_job_step_layout_free,libslurm),Void,(Ptr{slurm_step_layout_t},),layout)
end

function slurm_job_step_pids_free(object)
    ccall((:slurm_job_step_pids_free,libslurm),Void,(Ptr{job_step_pids_t},),object)
end

function slurm_job_step_pids_response_msg_free(object)
    ccall((:slurm_job_step_pids_response_msg_free,libslurm),Void,(Ptr{Void},),object)
end

function slurm_job_step_stat_free(object)
    ccall((:slurm_job_step_stat_free,libslurm),Void,(Ptr{job_step_stat_t},),object)
end

function slurm_job_step_stat_response_msg_free(object)
    ccall((:slurm_job_step_stat_response_msg_free,libslurm),Void,(Ptr{Void},),object)
end

function slurm_update_step(step_msg)
    ccall((:slurm_update_step,libslurm),Cint,(Ptr{step_update_request_msg_t},),step_msg)
end

function slurm_load_node(update_time::time_t,resp,show_flags::UInt16)
    ccall((:slurm_load_node,libslurm),Cint,(time_t,Ptr{Ptr{node_info_msg_t}},UInt16),update_time,resp,show_flags)
end

function slurm_load_node_single(resp,node_name,show_flags::UInt16)
    ccall((:slurm_load_node_single,libslurm),Cint,(Ptr{Ptr{node_info_msg_t}},Cstring,UInt16),resp,node_name,show_flags)
end

function slurm_get_node_energy(host,delta::UInt16,sensors_cnt,energy)
    ccall((:slurm_get_node_energy,libslurm),Cint,(Cstring,UInt16,Ptr{UInt16},Ptr{Ptr{acct_gather_energy_t}}),host,delta,sensors_cnt,energy)
end

function slurm_free_node_info_msg(node_buffer_ptr)
    ccall((:slurm_free_node_info_msg,libslurm),Void,(Ptr{node_info_msg_t},),node_buffer_ptr)
end

function slurm_print_node_info_msg(out,node_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_node_info_msg,libslurm),Void,(Ptr{FILE},Ptr{node_info_msg_t},Cint),out,node_info_msg_ptr,one_liner)
end

function slurm_print_node_table(out,node_ptr,node_scaling::Cint,one_liner::Cint)
    ccall((:slurm_print_node_table,libslurm),Void,(Ptr{FILE},Ptr{node_info_t},Cint,Cint),out,node_ptr,node_scaling,one_liner)
end

function slurm_sprint_node_table(node_ptr,node_scaling::Cint,one_liner::Cint)
    ccall((:slurm_sprint_node_table,libslurm),Cstring,(Ptr{node_info_t},Cint,Cint),node_ptr,node_scaling,one_liner)
end

function slurm_init_update_node_msg(update_node_msg)
    ccall((:slurm_init_update_node_msg,libslurm),Void,(Ptr{update_node_msg_t},),update_node_msg)
end

function slurm_update_node(node_msg)
    ccall((:slurm_update_node,libslurm),Cint,(Ptr{update_node_msg_t},),node_msg)
end

function slurm_load_front_end(update_time::time_t,resp)
    ccall((:slurm_load_front_end,libslurm),Cint,(time_t,Ptr{Ptr{front_end_info_msg_t}}),update_time,resp)
end

function slurm_free_front_end_info_msg(front_end_buffer_ptr)
    ccall((:slurm_free_front_end_info_msg,libslurm),Void,(Ptr{front_end_info_msg_t},),front_end_buffer_ptr)
end

function slurm_print_front_end_info_msg(out,front_end_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_front_end_info_msg,libslurm),Void,(Ptr{FILE},Ptr{front_end_info_msg_t},Cint),out,front_end_info_msg_ptr,one_liner)
end

function slurm_print_front_end_table(out,front_end_ptr,one_liner::Cint)
    ccall((:slurm_print_front_end_table,libslurm),Void,(Ptr{FILE},Ptr{front_end_info_t},Cint),out,front_end_ptr,one_liner)
end

function slurm_sprint_front_end_table(front_end_ptr,one_liner::Cint)
    ccall((:slurm_sprint_front_end_table,libslurm),Cstring,(Ptr{front_end_info_t},Cint),front_end_ptr,one_liner)
end

function slurm_init_update_front_end_msg(update_front_end_msg)
    ccall((:slurm_init_update_front_end_msg,libslurm),Void,(Ptr{update_front_end_msg_t},),update_front_end_msg)
end

function slurm_update_front_end(front_end_msg)
    ccall((:slurm_update_front_end,libslurm),Cint,(Ptr{update_front_end_msg_t},),front_end_msg)
end

function slurm_load_topo(topo_info_msg_pptr)
    ccall((:slurm_load_topo,libslurm),Cint,(Ptr{Ptr{topo_info_response_msg_t}},),topo_info_msg_pptr)
end

function slurm_free_topo_info_msg(msg)
    ccall((:slurm_free_topo_info_msg,libslurm),Void,(Ptr{topo_info_response_msg_t},),msg)
end

function slurm_print_topo_info_msg(out,topo_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_topo_info_msg,libslurm),Void,(Ptr{FILE},Ptr{topo_info_response_msg_t},Cint),out,topo_info_msg_ptr,one_liner)
end

function slurm_print_topo_record(out,topo_ptr,one_liner::Cint)
    ccall((:slurm_print_topo_record,libslurm),Void,(Ptr{FILE},Ptr{topo_info_t},Cint),out,topo_ptr,one_liner)
end

function slurm_load_powercap(powercap_info_msg_pptr)
    ccall((:slurm_load_powercap,libslurm),Cint,(Ptr{Ptr{powercap_info_msg_t}},),powercap_info_msg_pptr)
end

function slurm_free_powercap_info_msg(msg)
    ccall((:slurm_free_powercap_info_msg,libslurm),Void,(Ptr{powercap_info_msg_t},),msg)
end

function slurm_print_powercap_info_msg(out,powercap_info_msg_ptr,one_liner::Cint)
    ccall((:slurm_print_powercap_info_msg,libslurm),Void,(Ptr{FILE},Ptr{powercap_info_msg_t},Cint),out,powercap_info_msg_ptr,one_liner)
end

function slurm_update_powercap(powercap_msg)
    ccall((:slurm_update_powercap,libslurm),Cint,(Ptr{update_powercap_msg_t},),powercap_msg)
end

function slurm_get_select_jobinfo(jobinfo,data_type::select_jobdata_type,data)
    ccall((:slurm_get_select_jobinfo,libslurm),Cint,(Ptr{dynamic_plugin_data_t},select_jobdata_type,Ptr{Void}),jobinfo,data_type,data)
end

function slurm_get_select_nodeinfo(nodeinfo,data_type::select_nodedata_type,state::node_states,data)
    ccall((:slurm_get_select_nodeinfo,libslurm),Cint,(Ptr{dynamic_plugin_data_t},select_nodedata_type,node_states,Ptr{Void}),nodeinfo,data_type,state,data)
end

function slurm_init_part_desc_msg(update_part_msg)
    ccall((:slurm_init_part_desc_msg,libslurm),Void,(Ptr{update_part_msg_t},),update_part_msg)
end

function slurm_load_partitions(update_time::time_t,part_buffer_ptr,show_flags::UInt16)
    ccall((:slurm_load_partitions,libslurm),Cint,(time_t,Ptr{Ptr{partition_info_msg_t}},UInt16),update_time,part_buffer_ptr,show_flags)
end

function slurm_free_partition_info_msg(part_info_ptr)
    ccall((:slurm_free_partition_info_msg,libslurm),Void,(Ptr{partition_info_msg_t},),part_info_ptr)
end

function slurm_print_partition_info_msg(out,part_info_ptr,one_liner::Cint)
    ccall((:slurm_print_partition_info_msg,libslurm),Void,(Ptr{FILE},Ptr{partition_info_msg_t},Cint),out,part_info_ptr,one_liner)
end

function slurm_print_partition_info(out,part_ptr,one_liner::Cint)
    ccall((:slurm_print_partition_info,libslurm),Void,(Ptr{FILE},Ptr{partition_info_t},Cint),out,part_ptr,one_liner)
end

function slurm_sprint_partition_info(part_ptr,one_liner::Cint)
    ccall((:slurm_sprint_partition_info,libslurm),Cstring,(Ptr{partition_info_t},Cint),part_ptr,one_liner)
end

function slurm_create_partition(part_msg)
    ccall((:slurm_create_partition,libslurm),Cint,(Ptr{update_part_msg_t},),part_msg)
end

function slurm_update_partition(part_msg)
    ccall((:slurm_update_partition,libslurm),Cint,(Ptr{update_part_msg_t},),part_msg)
end

function slurm_delete_partition(part_msg)
    ccall((:slurm_delete_partition,libslurm),Cint,(Ptr{delete_part_msg_t},),part_msg)
end

function slurm_print_layout_info(out,layout_info_ptr,one_liner::Cint)
    ccall((:slurm_print_layout_info,libslurm),Void,(Ptr{FILE},Ptr{layout_info_msg_t},Cint),out,layout_info_ptr,one_liner)
end

function slurm_load_layout(layout_type,entities,_type,no_relation::UInt32,resp)
    ccall((:slurm_load_layout,libslurm),Cint,(Cstring,Cstring,Cstring,UInt32,Ptr{Ptr{layout_info_msg_t}}),layout_type,entities,_type,no_relation,resp)
end

function slurm_update_layout(layout_info_msg)
    ccall((:slurm_update_layout,libslurm),Cint,(Ptr{update_layout_msg_t},),layout_info_msg)
end

function slurm_free_layout_info_msg(layout_info_msg)
    ccall((:slurm_free_layout_info_msg,libslurm),Void,(Ptr{layout_info_msg_t},),layout_info_msg)
end

function slurm_init_resv_desc_msg(update_resv_msg)
    ccall((:slurm_init_resv_desc_msg,libslurm),Void,(Ptr{resv_desc_msg_t},),update_resv_msg)
end

function slurm_create_reservation(resv_msg)
    ccall((:slurm_create_reservation,libslurm),Cstring,(Ptr{resv_desc_msg_t},),resv_msg)
end

function slurm_update_reservation(resv_msg)
    ccall((:slurm_update_reservation,libslurm),Cint,(Ptr{resv_desc_msg_t},),resv_msg)
end

function slurm_delete_reservation(resv_msg)
    ccall((:slurm_delete_reservation,libslurm),Cint,(Ptr{reservation_name_msg_t},),resv_msg)
end

function slurm_load_reservations(update_time::time_t,resp)
    ccall((:slurm_load_reservations,libslurm),Cint,(time_t,Ptr{Ptr{reserve_info_msg_t}}),update_time,resp)
end

function slurm_print_reservation_info_msg(out,resv_info_ptr,one_liner::Cint)
    ccall((:slurm_print_reservation_info_msg,libslurm),Void,(Ptr{FILE},Ptr{reserve_info_msg_t},Cint),out,resv_info_ptr,one_liner)
end

function slurm_print_reservation_info(out,resv_ptr,one_liner::Cint)
    ccall((:slurm_print_reservation_info,libslurm),Void,(Ptr{FILE},Ptr{reserve_info_t},Cint),out,resv_ptr,one_liner)
end

function slurm_sprint_reservation_info(resv_ptr,one_liner::Cint)
    ccall((:slurm_sprint_reservation_info,libslurm),Cstring,(Ptr{reserve_info_t},Cint),resv_ptr,one_liner)
end

function slurm_free_reservation_info_msg(resv_info_ptr)
    ccall((:slurm_free_reservation_info_msg,libslurm),Void,(Ptr{reserve_info_msg_t},),resv_info_ptr)
end

function slurm_ping(primary::Cint)
    ccall((:slurm_ping,libslurm),Cint,(Cint,),primary)
end

function slurm_reconfigure()
    ccall((:slurm_reconfigure,libslurm),Cint,())
end

function slurm_shutdown(options::UInt16)
    ccall((:slurm_shutdown,libslurm),Cint,(UInt16,),options)
end

function slurm_takeover()
    ccall((:slurm_takeover,libslurm),Cint,())
end

function slurm_set_debugflags(debug_flags_plus::UInt64,debug_flags_minus::UInt64)
    ccall((:slurm_set_debugflags,libslurm),Cint,(UInt64,UInt64),debug_flags_plus,debug_flags_minus)
end

function slurm_set_debug_level(debug_level::UInt32)
    ccall((:slurm_set_debug_level,libslurm),Cint,(UInt32,),debug_level)
end

function slurm_set_schedlog_level(schedlog_level::UInt32)
    ccall((:slurm_set_schedlog_level,libslurm),Cint,(UInt32,),schedlog_level)
end

function slurm_suspend(job_id::UInt32)
    ccall((:slurm_suspend,libslurm),Cint,(UInt32,),job_id)
end

function slurm_suspend2(job_id,resp)
    ccall((:slurm_suspend2,libslurm),Cint,(Cstring,Ptr{Ptr{job_array_resp_msg_t}}),job_id,resp)
end

function slurm_resume(job_id::UInt32)
    ccall((:slurm_resume,libslurm),Cint,(UInt32,),job_id)
end

function slurm_resume2(job_id,resp)
    ccall((:slurm_resume2,libslurm),Cint,(Cstring,Ptr{Ptr{job_array_resp_msg_t}}),job_id,resp)
end

function slurm_free_job_array_resp(resp)
    ccall((:slurm_free_job_array_resp,libslurm),Void,(Ptr{job_array_resp_msg_t},),resp)
end

function slurm_requeue(job_id::UInt32,state::UInt32)
    ccall((:slurm_requeue,libslurm),Cint,(UInt32,UInt32),job_id,state)
end

function slurm_requeue2(job_id,state::UInt32,resp)
    ccall((:slurm_requeue2,libslurm),Cint,(Cstring,UInt32,Ptr{Ptr{job_array_resp_msg_t}}),job_id,state,resp)
end

function slurm_checkpoint_able(job_id::UInt32,step_id::UInt32,start_time)
    ccall((:slurm_checkpoint_able,libslurm),Cint,(UInt32,UInt32,Ptr{time_t}),job_id,step_id,start_time)
end

function slurm_checkpoint_disable(job_id::UInt32,step_id::UInt32)
    ccall((:slurm_checkpoint_disable,libslurm),Cint,(UInt32,UInt32),job_id,step_id)
end

function slurm_checkpoint_enable(job_id::UInt32,step_id::UInt32)
    ccall((:slurm_checkpoint_enable,libslurm),Cint,(UInt32,UInt32),job_id,step_id)
end

function slurm_checkpoint_create(job_id::UInt32,step_id::UInt32,max_wait::UInt16,image_dir)
    ccall((:slurm_checkpoint_create,libslurm),Cint,(UInt32,UInt32,UInt16,Cstring),job_id,step_id,max_wait,image_dir)
end

function slurm_checkpoint_requeue(job_id::UInt32,max_wait::UInt16,image_dir)
    ccall((:slurm_checkpoint_requeue,libslurm),Cint,(UInt32,UInt16,Cstring),job_id,max_wait,image_dir)
end

function slurm_checkpoint_vacate(job_id::UInt32,step_id::UInt32,max_wait::UInt16,image_dir)
    ccall((:slurm_checkpoint_vacate,libslurm),Cint,(UInt32,UInt32,UInt16,Cstring),job_id,step_id,max_wait,image_dir)
end

function slurm_checkpoint_restart(job_id::UInt32,step_id::UInt32,stick::UInt16,image_dir)
    ccall((:slurm_checkpoint_restart,libslurm),Cint,(UInt32,UInt32,UInt16,Cstring),job_id,step_id,stick,image_dir)
end

function slurm_checkpoint_complete(job_id::UInt32,step_id::UInt32,begin_time::time_t,error_code::UInt32,error_msg)
    ccall((:slurm_checkpoint_complete,libslurm),Cint,(UInt32,UInt32,time_t,UInt32,Cstring),job_id,step_id,begin_time,error_code,error_msg)
end

function slurm_checkpoint_task_complete(job_id::UInt32,step_id::UInt32,task_id::UInt32,begin_time::time_t,error_code::UInt32,error_msg)
    ccall((:slurm_checkpoint_task_complete,libslurm),Cint,(UInt32,UInt32,UInt32,time_t,UInt32,Cstring),job_id,step_id,task_id,begin_time,error_code,error_msg)
end

function slurm_checkpoint_error(job_id::UInt32,step_id::UInt32,error_code,error_msg)
    ccall((:slurm_checkpoint_error,libslurm),Cint,(UInt32,UInt32,Ptr{UInt32},Ptr{Cstring}),job_id,step_id,error_code,error_msg)
end

function slurm_checkpoint_tasks(job_id::UInt32,step_id::UInt16,begin_time::time_t,image_dir,max_wait::UInt16,nodelist)
    ccall((:slurm_checkpoint_tasks,libslurm),Cint,(UInt32,UInt16,time_t,Cstring,UInt16,Cstring),job_id,step_id,begin_time,image_dir,max_wait,nodelist)
end

function slurm_set_trigger(trigger_set)
    ccall((:slurm_set_trigger,libslurm),Cint,(Ptr{trigger_info_t},),trigger_set)
end

function slurm_clear_trigger(trigger_clear)
    ccall((:slurm_clear_trigger,libslurm),Cint,(Ptr{trigger_info_t},),trigger_clear)
end

function slurm_get_triggers(trigger_get)
    ccall((:slurm_get_triggers,libslurm),Cint,(Ptr{Ptr{trigger_info_msg_t}},),trigger_get)
end

function slurm_pull_trigger(trigger_pull)
    ccall((:slurm_pull_trigger,libslurm),Cint,(Ptr{trigger_info_t},),trigger_pull)
end

function slurm_free_trigger_msg(trigger_free)
    ccall((:slurm_free_trigger_msg,libslurm),Void,(Ptr{trigger_info_msg_t},),trigger_free)
end

function slurm_init_trigger_msg(trigger_info_msg)
    ccall((:slurm_init_trigger_msg,libslurm),Void,(Ptr{trigger_info_t},),trigger_info_msg)
end

function slurm_burst_buffer_state_string(state::UInt16)
    ccall((:slurm_burst_buffer_state_string,libslurm),Cstring,(UInt16,),state)
end

function slurm_load_burst_buffer_info(burst_buffer_info_msg_pptr)
    ccall((:slurm_load_burst_buffer_info,libslurm),Cint,(Ptr{Ptr{burst_buffer_info_msg_t}},),burst_buffer_info_msg_pptr)
end

function slurm_free_burst_buffer_info_msg(burst_buffer_info_msg)
    ccall((:slurm_free_burst_buffer_info_msg,libslurm),Void,(Ptr{burst_buffer_info_msg_t},),burst_buffer_info_msg)
end

function slurm_print_burst_buffer_info_msg(out,info_ptr,one_liner::Cint,verbosity::Cint)
    ccall((:slurm_print_burst_buffer_info_msg,libslurm),Void,(Ptr{FILE},Ptr{burst_buffer_info_msg_t},Cint,Cint),out,info_ptr,one_liner,verbosity)
end

function slurm_print_burst_buffer_record(out,burst_buffer_ptr,one_liner::Cint,verbose::Cint)
    ccall((:slurm_print_burst_buffer_record,libslurm),Void,(Ptr{FILE},Ptr{burst_buffer_info_t},Cint,Cint),out,burst_buffer_ptr,one_liner,verbose)
end

function slurm_network_callerid(req::network_callerid_msg_t,job_id,node_name,node_name_size::Cint)
    ccall((:slurm_network_callerid,libslurm),Cint,(network_callerid_msg_t,Ptr{UInt32},Cstring,Cint),req,job_id,node_name,node_name_size)
end

function slurm_top_job(job_id_str)
    ccall((:slurm_top_job,libslurm),Cint,(Cstring,),job_id_str)
end
