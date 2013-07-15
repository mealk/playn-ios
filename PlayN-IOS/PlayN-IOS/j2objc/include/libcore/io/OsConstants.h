//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/OsConstants.java
//
//  Created by tball on 7/9/13.
//

#ifndef _LibcoreIoOsConstants_H_
#define _LibcoreIoOsConstants_H_

#import "JreEmulation.h"

#define LibcoreIoOsConstants_E2BIG 7
#define LibcoreIoOsConstants_EACCES 13
#define LibcoreIoOsConstants_EADDRINUSE 48
#define LibcoreIoOsConstants_EADDRNOTAVAIL 49
#define LibcoreIoOsConstants_EAFNOSUPPORT 47
#define LibcoreIoOsConstants_EAGAIN 35
#define LibcoreIoOsConstants_EALREADY 37
#define LibcoreIoOsConstants_EBADF 9
#define LibcoreIoOsConstants_EBADMSG 94
#define LibcoreIoOsConstants_EBUSY 16
#define LibcoreIoOsConstants_ECANCELED 89
#define LibcoreIoOsConstants_ECHILD 10
#define LibcoreIoOsConstants_ECONNABORTED 53
#define LibcoreIoOsConstants_ECONNREFUSED 61
#define LibcoreIoOsConstants_ECONNRESET 54
#define LibcoreIoOsConstants_EDEADLK 11
#define LibcoreIoOsConstants_EDESTADDRREQ 39
#define LibcoreIoOsConstants_EDOM 33
#define LibcoreIoOsConstants_EDQUOT 69
#define LibcoreIoOsConstants_EEXIST 17
#define LibcoreIoOsConstants_EFAULT 14
#define LibcoreIoOsConstants_EFBIG 27
#define LibcoreIoOsConstants_EHOSTUNREACH 65
#define LibcoreIoOsConstants_EIDRM 90
#define LibcoreIoOsConstants_EILSEQ 92
#define LibcoreIoOsConstants_EINPROGRESS 36
#define LibcoreIoOsConstants_EINTR 4
#define LibcoreIoOsConstants_EINVAL 22
#define LibcoreIoOsConstants_EIO 5
#define LibcoreIoOsConstants_EISCONN 56
#define LibcoreIoOsConstants_EISDIR 21
#define LibcoreIoOsConstants_ELOOP 62
#define LibcoreIoOsConstants_EMFILE 24
#define LibcoreIoOsConstants_EMLINK 31
#define LibcoreIoOsConstants_EMSGSIZE 40
#define LibcoreIoOsConstants_EMULTIHOP 95
#define LibcoreIoOsConstants_ENAMETOOLONG 63
#define LibcoreIoOsConstants_ENETDOWN 50
#define LibcoreIoOsConstants_ENETRESET 52
#define LibcoreIoOsConstants_ENETUNREACH 51
#define LibcoreIoOsConstants_ENFILE 23
#define LibcoreIoOsConstants_ENOBUFS 55
#define LibcoreIoOsConstants_ENODATA 96
#define LibcoreIoOsConstants_ENODEV 19
#define LibcoreIoOsConstants_ENOENT 2
#define LibcoreIoOsConstants_ENOEXEC 8
#define LibcoreIoOsConstants_ENOLCK 77
#define LibcoreIoOsConstants_ENOLINK 97
#define LibcoreIoOsConstants_ENOMEM 12
#define LibcoreIoOsConstants_ENOMSG 91
#define LibcoreIoOsConstants_ENOPROTOOPT 42
#define LibcoreIoOsConstants_ENOSPC 28
#define LibcoreIoOsConstants_ENOSR 98
#define LibcoreIoOsConstants_ENOSTR 99
#define LibcoreIoOsConstants_ENOSYS 78
#define LibcoreIoOsConstants_ENOTCONN 57
#define LibcoreIoOsConstants_ENOTDIR 20
#define LibcoreIoOsConstants_ENOTEMPTY 66
#define LibcoreIoOsConstants_ENOTSOCK 38
#define LibcoreIoOsConstants_ENOTSUP 45
#define LibcoreIoOsConstants_ENOTTY 25
#define LibcoreIoOsConstants_ENXIO 6
#define LibcoreIoOsConstants_EOPNOTSUPP 45
#define LibcoreIoOsConstants_EOVERFLOW 84
#define LibcoreIoOsConstants_EPERM 1
#define LibcoreIoOsConstants_EPIPE 32
#define LibcoreIoOsConstants_EPROTO 100
#define LibcoreIoOsConstants_EPROTONOSUPPORT 43
#define LibcoreIoOsConstants_EPROTOTYPE 41
#define LibcoreIoOsConstants_ERANGE 34
#define LibcoreIoOsConstants_EROFS 30
#define LibcoreIoOsConstants_ESPIPE 29
#define LibcoreIoOsConstants_ESRCH 3
#define LibcoreIoOsConstants_ESTALE 70
#define LibcoreIoOsConstants_ETIME 101
#define LibcoreIoOsConstants_ETIMEDOUT 60
#define LibcoreIoOsConstants_ETXTBSY 26
#define LibcoreIoOsConstants_EWOULDBLOCK 35
#define LibcoreIoOsConstants_EXDEV 18
#define LibcoreIoOsConstants_F_DUPFD 0
#define LibcoreIoOsConstants_F_GETFD 1
#define LibcoreIoOsConstants_F_GETFL 3
#define LibcoreIoOsConstants_F_GETLK 7
#define LibcoreIoOsConstants_F_GETOWN 5
#define LibcoreIoOsConstants_F_SETFD 2
#define LibcoreIoOsConstants_F_SETFL 4
#define LibcoreIoOsConstants_F_SETLK 8
#define LibcoreIoOsConstants_F_SETLKW 9
#define LibcoreIoOsConstants_O_ACCMODE 3
#define LibcoreIoOsConstants_O_APPEND 8
#define LibcoreIoOsConstants_O_CREAT 512
#define LibcoreIoOsConstants_O_EXCL 2048
#define LibcoreIoOsConstants_O_NOCTTY 131072
#define LibcoreIoOsConstants_O_NOFOLLOW 256
#define LibcoreIoOsConstants_O_NONBLOCK 4
#define LibcoreIoOsConstants_O_RDONLY 0
#define LibcoreIoOsConstants_O_RDWR 2
#define LibcoreIoOsConstants_O_SYNC 128
#define LibcoreIoOsConstants_O_TRUNC 1024
#define LibcoreIoOsConstants_O_WRONLY 1

@interface LibcoreIoOsConstants : NSObject {
}

+ (int)getE2BIG;
+ (int)getEACCES;
+ (int)getEADDRINUSE;
+ (int)getEADDRNOTAVAIL;
+ (int)getEAFNOSUPPORT;
+ (int)getEAGAIN;
+ (int)getEALREADY;
+ (int)getEBADF;
+ (int)getEBADMSG;
+ (int)getEBUSY;
+ (int)getECANCELED;
+ (int)getECHILD;
+ (int)getECONNABORTED;
+ (int)getECONNREFUSED;
+ (int)getECONNRESET;
+ (int)getEDEADLK;
+ (int)getEDESTADDRREQ;
+ (int)getEDOM;
+ (int)getEDQUOT;
+ (int)getEEXIST;
+ (int)getEFAULT;
+ (int)getEFBIG;
+ (int)getEHOSTUNREACH;
+ (int)getEIDRM;
+ (int)getEILSEQ;
+ (int)getEINPROGRESS;
+ (int)getEINTR;
+ (int)getEINVAL;
+ (int)getEIO;
+ (int)getEISCONN;
+ (int)getEISDIR;
+ (int)getELOOP;
+ (int)getEMFILE;
+ (int)getEMLINK;
+ (int)getEMSGSIZE;
+ (int)getEMULTIHOP;
+ (int)getENAMETOOLONG;
+ (int)getENETDOWN;
+ (int)getENETRESET;
+ (int)getENETUNREACH;
+ (int)getENFILE;
+ (int)getENOBUFS;
+ (int)getENODATA;
+ (int)getENODEV;
+ (int)getENOENT;
+ (int)getENOEXEC;
+ (int)getENOLCK;
+ (int)getENOLINK;
+ (int)getENOMEM;
+ (int)getENOMSG;
+ (int)getENOPROTOOPT;
+ (int)getENOSPC;
+ (int)getENOSR;
+ (int)getENOSTR;
+ (int)getENOSYS;
+ (int)getENOTCONN;
+ (int)getENOTDIR;
+ (int)getENOTEMPTY;
+ (int)getENOTSOCK;
+ (int)getENOTSUP;
+ (int)getENOTTY;
+ (int)getENXIO;
+ (int)getEOPNOTSUPP;
+ (int)getEOVERFLOW;
+ (int)getEPERM;
+ (int)getEPIPE;
+ (int)getEPROTO;
+ (int)getEPROTONOSUPPORT;
+ (int)getEPROTOTYPE;
+ (int)getERANGE;
+ (int)getEROFS;
+ (int)getESPIPE;
+ (int)getESRCH;
+ (int)getESTALE;
+ (int)getETIME;
+ (int)getETIMEDOUT;
+ (int)getETXTBSY;
+ (int)getEWOULDBLOCK;
+ (int)getEXDEV;
+ (int)getF_DUPFD;
+ (int)getF_GETFD;
+ (int)getF_GETFL;
+ (int)getF_GETLK;
+ (int)getF_GETOWN;
+ (int)getF_SETFD;
+ (int)getF_SETFL;
+ (int)getF_SETLK;
+ (int)getF_SETLKW;
+ (int)getO_ACCMODE;
+ (int)getO_APPEND;
+ (int)getO_CREAT;
+ (int)getO_EXCL;
+ (int)getO_NOCTTY;
+ (int)getO_NOFOLLOW;
+ (int)getO_NONBLOCK;
+ (int)getO_RDONLY;
+ (int)getO_RDWR;
+ (int)getO_SYNC;
+ (int)getO_TRUNC;
+ (int)getO_WRONLY;
- (id)init;
+ (NSString *)errnoNameWithInt:(int)errno_;
@end

#endif // _LibcoreIoOsConstants_H_
