lbl_8062DAD8:
/* 8062DAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DADC  7C 08 02 A6 */	mflr r0
/* 8062DAE0  3C A0 80 63 */	lis r5, prenmi_main@ha /* 0x8062DA68@ha */
/* 8062DAE4  3C 80 80 63 */	lis r4, prenmi_cleanup@ha /* 0x8062DAC8@ha */
/* 8062DAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DAEC  38 A5 DA 68 */	addi r5, r5, prenmi_main@l /* 0x8062DA68@l */
/* 8062DAF0  38 84 DA C8 */	addi r4, r4, prenmi_cleanup@l /* 0x8062DAC8@l */
/* 8062DAF4  38 00 00 1E */	li r0, 0x1e
/* 8062DAF8  90 A3 00 04 */	stw r5, 4(r3)
/* 8062DAFC  90 83 00 08 */	stw r4, 8(r3)
/* 8062DB00  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 8062DB04  38 60 00 01 */	li r3, 1
/* 8062DB08  4B DD 73 2D */	bl SetGameFrame
/* 8062DB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DB10  7C 08 03 A6 */	mtlr r0
/* 8062DB14  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DB18  4E 80 00 20 */	blr 
