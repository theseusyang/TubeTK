/*=========================================================================

Library:   TubeTK

Copyright 2010 Kitware Inc. 28 Corporate Drive,
Clifton Park, NY, 12065, USA.

All rights reserved.

Licensed under the Apache License, Version 2.0 ( the "License" );
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=========================================================================*/


#ifndef _itkDocument_h
#define _itkDocument_h

#include <itkDataObject.h>
#include <itkObjectFactory.h>

namespace itk
{

namespace tube
{

/**
  * \class Document
  *  \brief Base class that allows text based documentation of meta information
  *
  *  IO is done through MetaDocument.h
  *
  *  \ingroup Document
  */
class Document : public DataObject
{
  public:

    typedef Document                              Self;
    typedef DataObject                            Superclass;

    typedef SmartPointer< Self >                  Pointer;
    typedef SmartPointer< const Self >            ConstPointer;

    typedef const char *                          DateType;
    typedef const char *                          CommentsType;

    /**
     * Not Implemented, but would allow for Document
     * objects to be held by other documents
     */
    typedef std::vector< Pointer > ChildrenListType;
    typedef ChildrenListType* ChildrenListPointer;

     /** Method for creation through the object factory. */
    itkNewMacro(Self);

    /** Run-time type information (and related methods). */
    itkTypeMacro( Self, Superclass );

    /** Get the inputted Comments value */
    CommentsType GetComment() const { return m_Comment; }
    /** Set the Comments value */
    void SetComment( CommentsType comment ) { m_Comment = comment; }

    /** Get the modification Date (not implemented) */
    DateType  GetDateModified() const { return m_DateModified; }

    /** There is no information that can be passed using this function */
    void CopyInformation(const DataObject*) {}

    /** Documents do not use region information so must override these classes */
    void UpdateOutputInformation() {}
    /** Documents do not use region information so must override these classes */
    bool VerifyRequestedRegion() { return true; }
    /** Documents do not use region information so must override these classes */
    bool RequestedRegionIsOutsideOfTheBufferedRegion() { return false; }
    /** Documents do not use region information so must override these classes */
    void SetRequestedRegion( Superclass * ) {}
    /** Documents do not use region information so must override these classes */
    void SetRequestedRegionToLargestPossibleRegion() {}

  protected:

    Document(){}
    ~Document(){}

    virtual void PrintSelf(std::ostream& os, Indent indent) const
      {
      Superclass::PrintSelf(os,indent);

      os << indent << "TimeLastModified: " << m_DateModified << std::endl;
      os << indent << "Comment: " << m_Comment << std::endl;
      }

  private:

    DateType      m_DateModified;
    CommentsType  m_Comment;
};

} // End namespace tube

} // End namespace itk

#endif
