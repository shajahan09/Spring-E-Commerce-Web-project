/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.springwithhibernate.repository;

import io.bitsofts.springwithhibernate.model.Brand;
import java.io.Serializable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository(value = "brandrepo")
public interface BrandRepository extends CrudRepository<Brand, Integer>{
    
    
}
