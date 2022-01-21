.include "macros.inc"

.section .text

.org 0x80060090

.global __osInitialize_common
__osInitialize_common:
/* 80060090 0005CFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060094 0005CFF4  7C 08 02 A6 */	mflr r0
/* 80060098 0005CFF8  38 60 00 00 */	li r3, 0
/* 8006009C 0005CFFC  38 80 00 01 */	li r4, 1
/* 800600A0 0005D000  90 01 00 14 */	stw r0, 0x14(r1)
/* 800600A4 0005D004  88 0D 8A D0 */	lbz r0, lbl_80218650-_SDA_BASE_(r13)
/* 800600A8 0005D008  90 6D 8A D4 */	stw r3, osShutdown-_SDA_BASE_(r13)
/* 800600AC 0005D00C  28 00 00 00 */	cmplwi r0, 0
/* 800600B0 0005D010  90 8D 82 90 */	stw r4, __osFinalrom-_SDA_BASE_(r13)
/* 800600B4 0005D014  90 6D 8A D8 */	stw r3, __osShutdownDisable-_SDA_BASE_(r13)
/* 800600B8 0005D018  90 6D 8A DC */	stw r3, __osShutdown-_SDA_BASE_(r13)
/* 800600BC 0005D01C  98 6D 8B 01 */	stb r3, lbl_80218681-_SDA_BASE_(r13)
/* 800600C0 0005D020  98 6D 8B 00 */	stb r3, lbl_80218680-_SDA_BASE_(r13)
/* 800600C4 0005D024  40 82 00 18 */	bne lbl_800600DC
/* 800600C8 0005D028  48 00 04 CD */	bl __osTimerServicesInit
/* 800600CC 0005D02C  38 60 00 00 */	li r3, 0
/* 800600D0 0005D030  38 00 00 01 */	li r0, 1
/* 800600D4 0005D034  90 6D 8B 08 */	stw r3, __osContinitialized-_SDA_BASE_(r13)
/* 800600D8 0005D038  98 0D 8A D0 */	stb r0, lbl_80218650-_SDA_BASE_(r13)
lbl_800600DC:
/* 800600DC 0005D03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800600E0 0005D040  7C 08 03 A6 */	mtlr r0
/* 800600E4 0005D044  38 21 00 10 */	addi r1, r1, 0x10
/* 800600E8 0005D048  4E 80 00 20 */	blr 

.global osIsDisableShutdown
osIsDisableShutdown:
/* 800600EC 0005D04C  80 6D 8A E8 */	lwz r3, __osDisableShutdownLevel-_SDA_BASE_(r13)
/* 800600F0 0005D050  7C 03 00 D0 */	neg r0, r3
/* 800600F4 0005D054  7C 00 1B 78 */	or r0, r0, r3
/* 800600F8 0005D058  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800600FC 0005D05C  4E 80 00 20 */	blr 

.global osIsEnableShutdown
osIsEnableShutdown:
/* 80060100 0005D060  80 0D 8A E8 */	lwz r0, __osDisableShutdownLevel-_SDA_BASE_(r13)
/* 80060104 0005D064  7C 00 00 34 */	cntlzw r0, r0
/* 80060108 0005D068  54 03 D9 7E */	srwi r3, r0, 5
/* 8006010C 0005D06C  4E 80 00 20 */	blr 

.global osGetDisableShutdownTime
osGetDisableShutdownTime:
/* 80060110 0005D070  80 6D 8A E0 */	lwz r3, __osDisableShutdownTime-_SDA_BASE_(r13)
/* 80060114 0005D074  80 8D 8A E4 */	lwz r4, lbl_80218664-_SDA_BASE_(r13)
/* 80060118 0005D078  4E 80 00 20 */	blr 
