lbl_803B88D8:
/* 803B88D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B88DC  7C 08 02 A6 */	mflr r0
/* 803B88E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B88E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B88E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B88EC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B88F0  7C 7E 1B 78 */	mr r30, r3
/* 803B88F4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803B88F8  3C 63 00 02 */	addis r3, r3, 2
/* 803B88FC  88 03 60 02 */	lbz r0, 0x6002(r3)
/* 803B8900  28 00 00 02 */	cmplwi r0, 2
/* 803B8904  41 82 00 B0 */	beq lbl_803B89B4
/* 803B8908  28 00 00 03 */	cmplwi r0, 3
/* 803B890C  40 82 00 08 */	bne lbl_803B8914
/* 803B8910  48 00 00 A4 */	b lbl_803B89B4
lbl_803B8914:
/* 803B8914  38 60 00 40 */	li r3, 0x40
/* 803B8918  38 80 00 01 */	li r4, 1
/* 803B891C  4B FE 51 E5 */	bl mEv_check_status
/* 803B8920  2C 03 00 01 */	cmpwi r3, 1
/* 803B8924  40 82 00 90 */	bne lbl_803B89B4
/* 803B8928  7F C3 F3 78 */	mr r3, r30
/* 803B892C  4B FF FF 09 */	bl mEnv_check_countdown_start
/* 803B8930  38 60 00 40 */	li r3, 0x40
/* 803B8934  38 80 00 08 */	li r4, 8
/* 803B8938  4B FE 51 C9 */	bl mEv_check_status
/* 803B893C  2C 03 00 01 */	cmpwi r3, 1
/* 803B8940  40 82 00 74 */	bne lbl_803B89B4
/* 803B8944  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B8948  88 BE 1D 85 */	lbz r5, 0x1d85(r30)
/* 803B894C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B8950  3C 83 00 02 */	addis r4, r3, 2
/* 803B8954  88 04 61 25 */	lbz r0, 0x6125(r4)
/* 803B8958  28 00 00 0C */	cmplwi r0, 0xc
/* 803B895C  41 82 00 0C */	beq lbl_803B8968
/* 803B8960  3B E0 00 00 */	li r31, 0
/* 803B8964  48 00 00 18 */	b lbl_803B897C
lbl_803B8968:
/* 803B8968  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015180@ha */
/* 803B896C  80 84 61 1C */	lwz r4, 0x611c(r4)
/* 803B8970  38 03 51 80 */	addi r0, r3, 0x5180 /* 0x00015180@l */
/* 803B8974  7C 04 00 50 */	subf r0, r4, r0
/* 803B8978  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803B897C:
/* 803B897C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803B8980  7C 00 28 40 */	cmplw r0, r5
/* 803B8984  41 82 00 30 */	beq lbl_803B89B4
/* 803B8988  28 00 00 00 */	cmplwi r0, 0
/* 803B898C  40 82 00 0C */	bne lbl_803B8998
/* 803B8990  38 60 01 51 */	li r3, 0x151
/* 803B8994  48 00 00 18 */	b lbl_803B89AC
lbl_803B8998:
/* 803B8998  28 00 00 0A */	cmplwi r0, 0xa
/* 803B899C  41 81 00 0C */	bgt lbl_803B89A8
/* 803B89A0  38 60 01 50 */	li r3, 0x150
/* 803B89A4  48 00 00 08 */	b lbl_803B89AC
lbl_803B89A8:
/* 803B89A8  38 60 04 31 */	li r3, 0x431
lbl_803B89AC:
/* 803B89AC  48 27 53 59 */	bl sAdo_SysTrgStart
/* 803B89B0  9B FE 1D 85 */	stb r31, 0x1d85(r30)
lbl_803B89B4:
/* 803B89B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B89B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B89BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B89C0  7C 08 03 A6 */	mtlr r0
/* 803B89C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B89C8  4E 80 00 20 */	blr 
