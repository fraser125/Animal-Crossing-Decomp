lbl_80497294:
/* 80497294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497298  7C 08 02 A6 */	mflr r0
/* 8049729C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804972A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804972A4  3B E0 00 01 */	li r31, 1
/* 804972A8  4B F0 39 01 */	bl mEv_CheckArbeit
/* 804972AC  2C 03 00 00 */	cmpwi r3, 0
/* 804972B0  40 82 00 4C */	bne lbl_804972FC
/* 804972B4  4B F0 3A 79 */	bl mEv_CheckFirstIntro
/* 804972B8  2C 03 00 00 */	cmpwi r3, 0
/* 804972BC  40 82 00 40 */	bne lbl_804972FC
/* 804972C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804972C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804972C8  3C 63 00 02 */	addis r3, r3, 2
/* 804972CC  80 03 60 AC */	lwz r0, 0x60ac(r3)
/* 804972D0  28 00 00 00 */	cmplwi r0, 0
/* 804972D4  40 82 00 28 */	bne lbl_804972FC
/* 804972D8  80 03 60 B0 */	lwz r0, 0x60b0(r3)
/* 804972DC  28 00 00 00 */	cmplwi r0, 0
/* 804972E0  40 82 00 1C */	bne lbl_804972FC
/* 804972E4  38 60 00 31 */	li r3, 0x31
/* 804972E8  38 80 00 01 */	li r4, 1
/* 804972EC  4B F0 68 15 */	bl mEv_check_status
/* 804972F0  2C 03 00 00 */	cmpwi r3, 0
/* 804972F4  40 82 00 08 */	bne lbl_804972FC
/* 804972F8  3B E0 00 00 */	li r31, 0
lbl_804972FC:
/* 804972FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497300  7F E3 FB 78 */	mr r3, r31
/* 80497304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80497308  7C 08 03 A6 */	mtlr r0
/* 8049730C  38 21 00 10 */	addi r1, r1, 0x10
/* 80497310  4E 80 00 20 */	blr 
