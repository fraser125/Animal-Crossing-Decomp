lbl_805294A4:
/* 805294A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805294A8  7C 08 02 A6 */	mflr r0
/* 805294AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805294B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805294B4  7C 7F 1B 78 */	mr r31, r3
/* 805294B8  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805294BC  28 00 00 FF */	cmplwi r0, 0xff
/* 805294C0  40 82 00 70 */	bne lbl_80529530
/* 805294C4  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 805294C8  28 00 00 16 */	cmplwi r0, 0x16
/* 805294CC  40 82 00 5C */	bne lbl_80529528
/* 805294D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805294D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805294D8  3C 63 00 02 */	addis r3, r3, 2
/* 805294DC  80 63 60 4C */	lwz r3, 0x604c(r3)
/* 805294E0  88 03 00 B8 */	lbz r0, 0xb8(r3)
/* 805294E4  28 00 00 00 */	cmplwi r0, 0
/* 805294E8  40 82 00 0C */	bne lbl_805294F4
/* 805294EC  38 80 00 01 */	li r4, 1
/* 805294F0  48 00 00 30 */	b lbl_80529520
lbl_805294F4:
/* 805294F4  80 9F 09 94 */	lwz r4, 0x994(r31)
/* 805294F8  3C 60 80 6A */	lis r3, action@ha /* 0x806A10F8@ha */
/* 805294FC  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80529500  38 63 10 F8 */	addi r3, r3, action@l /* 0x806A10F8@l */
/* 80529504  20 84 00 01 */	subfic r4, r4, 1
/* 80529508  7C 84 00 34 */	cntlzw r4, r4
/* 8052950C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80529510  54 84 D9 7E */	srwi r4, r4, 5
/* 80529514  7C 84 02 14 */	add r4, r4, r0
/* 80529518  54 80 10 3A */	slwi r0, r4, 2
/* 8052951C  7C 83 00 2E */	lwzx r4, r3, r0
lbl_80529520:
/* 80529520  7F E3 FB 78 */	mr r3, r31
/* 80529524  4B FF FD 95 */	bl aHN1_setupAction
lbl_80529528:
/* 80529528  7F E3 FB 78 */	mr r3, r31
/* 8052952C  4B FF FC 1D */	bl func_80529148
lbl_80529530:
/* 80529530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80529538  7C 08 03 A6 */	mtlr r0
/* 8052953C  38 21 00 10 */	addi r1, r1, 0x10
/* 80529540  4E 80 00 20 */	blr 
