lbl_806289B4:
/* 806289B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806289B8  7C 08 02 A6 */	mflr r0
/* 806289BC  2C 03 00 00 */	cmpwi r3, 0
/* 806289C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806289C4  41 82 00 4C */	beq lbl_80628A10
/* 806289C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806289CC  3C 80 80 6D */	lis r4, base@ha /* 0x806D4250@ha */
/* 806289D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806289D4  3C 63 00 02 */	addis r3, r3, 2
/* 806289D8  38 84 42 50 */	addi r4, r4, base@l /* 0x806D4250@l */
/* 806289DC  38 63 61 20 */	addi r3, r3, 0x6120
/* 806289E0  4B DD E0 9D */	bl lbRTC_IntervalTime
/* 806289E4  38 00 05 A0 */	li r0, 0x5a0
/* 806289E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806289EC  7C C3 03 96 */	divwu r6, r3, r0
/* 806289F0  38 A0 00 07 */	li r5, 7
/* 806289F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 806289F8  3C 63 00 02 */	addis r3, r3, 2
/* 806289FC  38 86 00 06 */	addi r4, r6, 6
/* 80628A00  7C 04 2B 96 */	divwu r0, r4, r5
/* 80628A04  7C 00 29 D6 */	mullw r0, r0, r5
/* 80628A08  7C 00 20 50 */	subf r0, r0, r4
/* 80628A0C  98 03 61 24 */	stb r0, 0x6124(r3)
lbl_80628A10:
/* 80628A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80628A14  7C 08 03 A6 */	mtlr r0
/* 80628A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80628A1C  4E 80 00 20 */	blr 
