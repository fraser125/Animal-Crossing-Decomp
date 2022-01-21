.include "macros.inc"

.section .text

.org 0x8005CBDC

.global vaprintf
vaprintf:
/* 8005CBDC 00059B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005CBE0 00059B40  7C 08 02 A6 */	mflr r0
/* 8005CBE4 00059B44  7C 67 1B 78 */	mr r7, r3
/* 8005CBE8 00059B48  7C A6 2B 78 */	mr r6, r5
/* 8005CBEC 00059B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005CBF0 00059B50  7C 80 23 78 */	mr r0, r4
/* 8005CBF4 00059B54  7C E4 3B 78 */	mr r4, r7
/* 8005CBF8 00059B58  80 63 00 00 */	lwz r3, 0(r3)
/* 8005CBFC 00059B5C  7C 05 03 78 */	mr r5, r0
/* 8005CC00 00059B60  48 00 28 CD */	bl _Printf
/* 8005CC04 00059B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005CC08 00059B68  7C 08 03 A6 */	mtlr r0
/* 8005CC0C 00059B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005CC10 00059B70  4E 80 00 20 */	blr 
