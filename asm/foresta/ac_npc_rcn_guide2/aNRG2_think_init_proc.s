lbl_80571B88:
/* 80571B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80571B8C  7C 08 02 A6 */	mflr r0
/* 80571B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80571B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80571B98  4B B2 93 3D */	bl func_8009AED4
/* 80571B9C  7C 9E 23 78 */	mr r30, r4
/* 80571BA0  7C 7F 1B 78 */	mr r31, r3
/* 80571BA4  4B E7 1F C5 */	bl mQst_GetFirstJobData
/* 80571BA8  38 00 00 00 */	li r0, 0
/* 80571BAC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80571BB0  98 1F 08 31 */	stb r0, 0x831(r31)
/* 80571BB4  38 00 00 FF */	li r0, 0xff
/* 80571BB8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80571BBC  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 80571BC0  3C 84 00 02 */	addis r4, r4, 2
/* 80571BC4  A8 1F 00 B6 */	lha r0, 0xb6(r31)
/* 80571BC8  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 80571BCC  A8 1F 00 B6 */	lha r0, 0xb6(r31)
/* 80571BD0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80571BD4  80 04 66 9C */	lwz r0, 0x669c(r4)
/* 80571BD8  2C 00 00 00 */	cmpwi r0, 0
/* 80571BDC  40 82 00 58 */	bne lbl_80571C34
/* 80571BE0  38 00 00 01 */	li r0, 1
/* 80571BE4  90 04 66 9C */	stw r0, 0x669c(r4)
/* 80571BE8  90 1F 09 B4 */	stw r0, 0x9b4(r31)
/* 80571BEC  88 03 00 00 */	lbz r0, 0(r3)
/* 80571BF0  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80571BF4  28 00 00 0E */	cmplwi r0, 0xe
/* 80571BF8  40 82 00 34 */	bne lbl_80571C2C
/* 80571BFC  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 80571C00  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 80571C04  28 00 24 10 */	cmplwi r0, 0x2410
/* 80571C08  40 82 00 14 */	bne lbl_80571C1C
/* 80571C0C  38 60 00 01 */	li r3, 1
/* 80571C10  4B FF ED 0D */	bl aNRG2_setup_job
/* 80571C14  3B A0 00 02 */	li r29, 2
/* 80571C18  48 00 00 38 */	b lbl_80571C50
lbl_80571C1C:
/* 80571C1C  38 60 00 00 */	li r3, 0
/* 80571C20  4B FF EC FD */	bl aNRG2_setup_job
/* 80571C24  3B A0 00 00 */	li r29, 0
/* 80571C28  48 00 00 28 */	b lbl_80571C50
lbl_80571C2C:
/* 80571C2C  3B A0 00 01 */	li r29, 1
/* 80571C30  48 00 00 20 */	b lbl_80571C50
lbl_80571C34:
/* 80571C34  88 03 00 01 */	lbz r0, 1(r3)
/* 80571C38  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 80571C3C  28 00 00 01 */	cmplwi r0, 1
/* 80571C40  40 82 00 0C */	bne lbl_80571C4C
/* 80571C44  3B A0 00 05 */	li r29, 5
/* 80571C48  48 00 00 08 */	b lbl_80571C50
lbl_80571C4C:
/* 80571C4C  3B A0 00 04 */	li r29, 4
lbl_80571C50:
/* 80571C50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80571C54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80571C58  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80571C5C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80571C60  40 82 00 34 */	bne lbl_80571C94
/* 80571C64  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F128@ha */
/* 80571C68  38 80 00 07 */	li r4, 7
/* 80571C6C  38 63 F1 28 */	addi r3, r3, 0xF128 /* 0x0000F128@l */
/* 80571C70  38 A0 00 01 */	li r5, 1
/* 80571C74  38 C0 00 00 */	li r6, 0
/* 80571C78  4B E3 59 D5 */	bl mFI_UtNumtoFGSet_common
/* 80571C7C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F128@ha */
/* 80571C80  38 80 00 08 */	li r4, 8
/* 80571C84  38 63 F1 28 */	addi r3, r3, 0xF128 /* 0x0000F128@l */
/* 80571C88  38 A0 00 01 */	li r5, 1
/* 80571C8C  38 C0 00 00 */	li r6, 0
/* 80571C90  4B E3 59 BD */	bl mFI_UtNumtoFGSet_common
lbl_80571C94:
/* 80571C94  7F E3 FB 78 */	mr r3, r31
/* 80571C98  7F C4 F3 78 */	mr r4, r30
/* 80571C9C  7F A5 EB 78 */	mr r5, r29
/* 80571CA0  48 00 00 ED */	bl aNRG2_setup_think_proc
/* 80571CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80571CA8  4B B2 92 79 */	bl func_8009AF20
/* 80571CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80571CB0  7C 08 03 A6 */	mtlr r0
/* 80571CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80571CB8  4E 80 00 20 */	blr 
