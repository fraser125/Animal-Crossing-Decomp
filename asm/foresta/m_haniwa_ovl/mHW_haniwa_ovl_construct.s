lbl_805E0938:
/* 805E0938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E093C  7C 08 02 A6 */	mflr r0
/* 805E0940  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E0944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E0948  93 C1 00 08 */	stw r30, 8(r1)
/* 805E094C  7C 7E 1B 78 */	mr r30, r3
/* 805E0950  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E0954  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 805E0958  28 00 00 00 */	cmplwi r0, 0
/* 805E095C  40 82 00 4C */	bne lbl_805E09A8
/* 805E0960  3C 60 81 21 */	lis r3, haniwa_ovl_data@ha /* 0x81211BD8@ha */
/* 805E0964  38 80 00 3C */	li r4, 0x3c
/* 805E0968  38 63 1B D8 */	addi r3, r3, haniwa_ovl_data@l /* 0x81211BD8@l */
/* 805E096C  38 A0 00 00 */	li r5, 0
/* 805E0970  4B DD A0 D9 */	bl mem_clear
/* 805E0974  3C 60 81 21 */	lis r3, haniwa_ovl_data@ha /* 0x81211BD8@ha */
/* 805E0978  3C 80 80 5E */	lis r4, func_805DFD60@ha /* 0x805DFD60@ha */
/* 805E097C  38 C3 1B D8 */	addi r6, r3, haniwa_ovl_data@l /* 0x81211BD8@l */
/* 805E0980  38 60 FF FF */	li r3, -1
/* 805E0984  90 DF 09 9C */	stw r6, 0x99c(r31)
/* 805E0988  38 A4 FD 60 */	addi r5, r4, func_805DFD60@l /* 0x805DFD60@l */
/* 805E098C  38 00 00 00 */	li r0, 0
/* 805E0990  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805E0994  80 84 09 9C */	lwz r4, 0x99c(r4)
/* 805E0998  90 A4 00 38 */	stw r5, 0x38(r4)
/* 805E099C  90 66 00 00 */	stw r3, 0(r6)
/* 805E09A0  90 06 00 08 */	stw r0, 8(r6)
/* 805E09A4  90 06 00 0C */	stw r0, 0xc(r6)
lbl_805E09A8:
/* 805E09A8  7F C3 F3 78 */	mr r3, r30
/* 805E09AC  4B FF FE E9 */	bl mHW_haniwa_ovl_init
/* 805E09B0  7F C3 F3 78 */	mr r3, r30
/* 805E09B4  4B FF FE 8D */	bl mHW_haniwa_ovl_set_proc
/* 805E09B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E09BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E09C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E09C4  7C 08 03 A6 */	mtlr r0
/* 805E09C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E09CC  4E 80 00 20 */	blr 
