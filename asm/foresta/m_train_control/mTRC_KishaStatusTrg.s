lbl_803F2690:
/* 803F2690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F2694  7C 08 02 A6 */	mflr r0
/* 803F2698  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F269C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803F26A0  28 00 00 01 */	cmplwi r0, 1
/* 803F26A4  40 82 00 18 */	bne lbl_803F26BC
/* 803F26A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F26AC  38 00 00 01 */	li r0, 1
/* 803F26B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F26B4  3C 84 00 03 */	addis r4, r4, 3
/* 803F26B8  98 04 88 7D */	stb r0, -0x7783(r4)
lbl_803F26BC:
/* 803F26BC  48 23 BD 15 */	bl sAdos_KishaStatusTrg
/* 803F26C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F26C4  7C 08 03 A6 */	mtlr r0
/* 803F26C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F26CC  4E 80 00 20 */	blr 
