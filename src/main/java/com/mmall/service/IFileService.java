package com.mmall.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * Create By dingchao
 * on 2019/4/9 0009
 */
public interface IFileService {
    String upload(MultipartFile file, String path);
}
