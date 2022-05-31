lbl_8057D840:
/* 8057D840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D844  7C 08 02 A6 */	mflr r0
/* 8057D848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D84C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D850  7C 9F 23 78 */	mr r31, r4
/* 8057D854  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D858  7C 7E 1B 78 */	mr r30, r3
/* 8057D85C  4B E3 62 AD */	bl mLd_PlayerManKindCheck
/* 8057D860  2C 03 00 00 */	cmpwi r3, 0
/* 8057D864  40 82 00 30 */	bne lbl_8057D894
/* 8057D868  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057D86C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057D870  3C 63 00 02 */	addis r3, r3, 2
/* 8057D874  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8057D878  3C 63 20 00 */	addis r3, r3, 0x2000
/* 8057D87C  38 63 00 0E */	addi r3, r3, 0xe
/* 8057D880  4B E1 D1 99 */	bl mEv_CheckEvent
/* 8057D884  2C 03 00 01 */	cmpwi r3, 1
/* 8057D888  40 82 00 0C */	bne lbl_8057D894
/* 8057D88C  38 A0 00 16 */	li r5, 0x16
/* 8057D890  48 00 00 58 */	b lbl_8057D8E8
lbl_8057D894:
/* 8057D894  3C 60 80 65 */	lis r3, lit_842@ha /* 0x80649A18@ha */
/* 8057D898  C0 03 9A 18 */	lfs f0, lit_842@l(r3)  /* 0x80649A18@l */
/* 8057D89C  D0 1E 01 44 */	stfs f0, 0x144(r30)
/* 8057D8A0  4B FF F3 0D */	bl check_null_lottery
/* 8057D8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8057D8A8  41 82 00 0C */	beq lbl_8057D8B4
/* 8057D8AC  38 A0 00 01 */	li r5, 1
/* 8057D8B0  48 00 00 38 */	b lbl_8057D8E8
lbl_8057D8B4:
/* 8057D8B4  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 8057D8B8  7C 60 07 35 */	extsh. r0, r3
/* 8057D8BC  7C 03 00 D0 */	neg r0, r3
/* 8057D8C0  41 80 00 08 */	blt lbl_8057D8C8
/* 8057D8C4  7C 60 1B 78 */	mr r0, r3
lbl_8057D8C8:
/* 8057D8C8  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 8057D8CC  40 80 00 18 */	bge lbl_8057D8E4
/* 8057D8D0  3C 60 80 65 */	lis r3, lit_697@ha /* 0x80649A14@ha */
/* 8057D8D4  38 A0 00 00 */	li r5, 0
/* 8057D8D8  C0 03 9A 14 */	lfs f0, lit_697@l(r3)  /* 0x80649A14@l */
/* 8057D8DC  D0 1E 01 44 */	stfs f0, 0x144(r30)
/* 8057D8E0  48 00 00 08 */	b lbl_8057D8E8
lbl_8057D8E4:
/* 8057D8E4  38 A0 00 02 */	li r5, 2
lbl_8057D8E8:
/* 8057D8E8  7F C3 F3 78 */	mr r3, r30
/* 8057D8EC  7F E4 FB 78 */	mr r4, r31
/* 8057D8F0  48 00 09 51 */	bl aSHM_setup_think_proc
/* 8057D8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D8F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D8FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D900  7C 08 03 A6 */	mtlr r0
/* 8057D904  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D908  4E 80 00 20 */	blr 
