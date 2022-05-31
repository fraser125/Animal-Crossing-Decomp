lbl_80574AB8:
/* 80574AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574ABC  7C 08 02 A6 */	mflr r0
/* 80574AC0  38 A0 19 00 */	li r5, 0x1900
/* 80574AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574ACC  7C 7F 1B 78 */	mr r31, r3
/* 80574AD0  7C 83 23 78 */	mr r3, r4
/* 80574AD4  7F E4 FB 78 */	mr r4, r31
/* 80574AD8  4B AE 85 45 */	bl func_8005D01C
/* 80574ADC  7F E3 FB 78 */	mr r3, r31
/* 80574AE0  4B FA 03 B1 */	bl mAGrw_SpoilKabuIsland
/* 80574AE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574AE8  7F E4 FB 78 */	mr r4, r31
/* 80574AEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574AF0  3C 63 00 03 */	addis r3, r3, 3
/* 80574AF4  38 63 A1 C0 */	addi r3, r3, -24128
/* 80574AF8  4B E4 0A ED */	bl mISL_gc_to_agb
/* 80574AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574B04  7C 08 03 A6 */	mtlr r0
/* 80574B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80574B0C  4E 80 00 20 */	blr 
