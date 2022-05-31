lbl_80576AC4:
/* 80576AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80576AC8  7C 08 02 A6 */	mflr r0
/* 80576ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80576AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80576AD4  4B B2 44 01 */	bl func_8009AED4
/* 80576AD8  7C BF 2B 78 */	mr r31, r5
/* 80576ADC  7C 7D 1B 78 */	mr r29, r3
/* 80576AE0  3C A0 80 6C */	lis r5, process@ha /* 0x806BFA4C@ha */
/* 80576AE4  93 E3 09 94 */	stw r31, 0x994(r3)
/* 80576AE8  57 E0 10 3A */	slwi r0, r31, 2
/* 80576AEC  7C 9E 23 78 */	mr r30, r4
/* 80576AF0  38 A5 FA 4C */	addi r5, r5, process@l /* 0x806BFA4C@l */
/* 80576AF4  7F E4 FB 78 */	mr r4, r31
/* 80576AF8  7C 05 00 2E */	lwzx r0, r5, r0
/* 80576AFC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80576B00  4B FF FA 5D */	bl func_8057655C
/* 80576B04  7F A3 EB 78 */	mr r3, r29
/* 80576B08  7F C4 F3 78 */	mr r4, r30
/* 80576B0C  7F E5 FB 78 */	mr r5, r31
/* 80576B10  4B FF FF 81 */	bl aNSS_init_proc
/* 80576B14  39 61 00 20 */	addi r11, r1, 0x20
/* 80576B18  4B B2 44 09 */	bl func_8009AF20
/* 80576B1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576B20  7C 08 03 A6 */	mtlr r0
/* 80576B24  38 21 00 20 */	addi r1, r1, 0x20
/* 80576B28  4E 80 00 20 */	blr 
