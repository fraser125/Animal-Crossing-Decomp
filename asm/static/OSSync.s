.include "macros.inc"

.section .text

.org 0x8007DB20

.global SystemCallVector
SystemCallVector:
/* 8007DB20 0007AA80  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 8007DB24 0007AA84  61 2A 00 08 */	ori r10, r9, 8
/* 8007DB28 0007AA88  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 8007DB2C 0007AA8C  4C 00 01 2C */	isync 
/* 8007DB30 0007AA90  7C 00 04 AC */	sync 0
/* 8007DB34 0007AA94  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 8007DB38 0007AA98  4C 00 00 64 */	rfi 
lbl_8007DB3C:
/* 8007DB3C 0007AA9C  60 00 00 00 */	nop 

.global __OSInitSystemCall
__OSInitSystemCall:
/* 8007DB40 0007AAA0  7C 08 02 A6 */	mflr r0
/* 8007DB44 0007AAA4  90 01 00 04 */	stw r0, 4(r1)
/* 8007DB48 0007AAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DB4C 0007AAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007DB50 0007AAB0  3C A0 80 00 */	lis r5, 0x80000C00@ha
/* 8007DB54 0007AAB4  3C 80 80 08 */	lis r4, SystemCallVector@ha
/* 8007DB58 0007AAB8  3C 60 80 08 */	lis r3, lbl_8007DB3C@ha
/* 8007DB5C 0007AABC  3B E5 0C 00 */	addi r31, r5, 0x80000C00@l
/* 8007DB60 0007AAC0  38 03 DB 3C */	addi r0, r3, lbl_8007DB3C@l
/* 8007DB64 0007AAC4  38 84 DB 20 */	addi r4, r4, SystemCallVector@l
/* 8007DB68 0007AAC8  7F E3 FB 78 */	mr r3, r31
/* 8007DB6C 0007AACC  7C A4 00 50 */	subf r5, r4, r0
/* 8007DB70 0007AAD0  4B F8 59 21 */	bl memcpy
/* 8007DB74 0007AAD4  7F E3 FB 78 */	mr r3, r31
/* 8007DB78 0007AAD8  38 80 01 00 */	li r4, 0x100
/* 8007DB7C 0007AADC  4B FF C0 71 */	bl DCFlushRangeNoSync
/* 8007DB80 0007AAE0  7C 00 04 AC */	sync 0
/* 8007DB84 0007AAE4  7F E3 FB 78 */	mr r3, r31
/* 8007DB88 0007AAE8  38 80 01 00 */	li r4, 0x100
/* 8007DB8C 0007AAEC  4B FF C1 21 */	bl ICInvalidateRange
/* 8007DB90 0007AAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DB94 0007AAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007DB98 0007AAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DB9C 0007AAFC  7C 08 03 A6 */	mtlr r0
/* 8007DBA0 0007AB00  4E 80 00 20 */	blr 
