.include "macros.inc"

.section .text

.org 0x8007FDFC

.global __init_user
__init_user:
/* 8007FDFC 0007CD5C  7C 08 02 A6 */	mflr r0
/* 8007FE00 0007CD60  90 01 00 04 */	stw r0, 4(r1)
/* 8007FE04 0007CD64  94 21 FF F8 */	stwu r1, -8(r1)
/* 8007FE08 0007CD68  48 00 00 15 */	bl __init_cpp
/* 8007FE0C 0007CD6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007FE10 0007CD70  38 21 00 08 */	addi r1, r1, 8
/* 8007FE14 0007CD74  7C 08 03 A6 */	mtlr r0
/* 8007FE18 0007CD78  4E 80 00 20 */	blr 

.global __init_cpp
__init_cpp:
/* 8007FE1C 0007CD7C  7C 08 02 A6 */	mflr r0
/* 8007FE20 0007CD80  90 01 00 04 */	stw r0, 4(r1)
/* 8007FE24 0007CD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007FE28 0007CD88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007FE2C 0007CD8C  3C 60 80 0B */	lis r3, __init_cpp_exceptions_reference@ha
/* 8007FE30 0007CD90  38 03 97 80 */	addi r0, r3, __init_cpp_exceptions_reference@l
/* 8007FE34 0007CD94  7C 1F 03 78 */	mr r31, r0
/* 8007FE38 0007CD98  48 00 00 04 */	b lbl_8007FE3C
lbl_8007FE3C:
/* 8007FE3C 0007CD9C  48 00 00 04 */	b lbl_8007FE40
lbl_8007FE40:
/* 8007FE40 0007CDA0  48 00 00 10 */	b lbl_8007FE50
lbl_8007FE44:
/* 8007FE44 0007CDA4  7D 88 03 A6 */	mtlr r12
/* 8007FE48 0007CDA8  4E 80 00 21 */	blrl 
/* 8007FE4C 0007CDAC  3B FF 00 04 */	addi r31, r31, 4
lbl_8007FE50:
/* 8007FE50 0007CDB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8007FE54 0007CDB4  28 0C 00 00 */	cmplwi r12, 0
/* 8007FE58 0007CDB8  40 82 FF EC */	bne lbl_8007FE44
/* 8007FE5C 0007CDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007FE60 0007CDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007FE64 0007CDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007FE68 0007CDC8  7C 08 03 A6 */	mtlr r0
/* 8007FE6C 0007CDCC  4E 80 00 20 */	blr 

.global _ExitProcess
_ExitProcess:
/* 8007FE70 0007CDD0  7C 08 02 A6 */	mflr r0
/* 8007FE74 0007CDD4  90 01 00 04 */	stw r0, 4(r1)
/* 8007FE78 0007CDD8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8007FE7C 0007CDDC  4B FF 88 41 */	bl PPCHalt
/* 8007FE80 0007CDE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007FE84 0007CDE4  38 21 00 08 */	addi r1, r1, 8
/* 8007FE88 0007CDE8  7C 08 03 A6 */	mtlr r0
/* 8007FE8C 0007CDEC  4E 80 00 20 */	blr 
