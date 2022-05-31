lbl_80494F90:
/* 80494F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494F94  7C 08 02 A6 */	mflr r0
/* 80494F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494F9C  A0 03 01 B6 */	lhz r0, 0x1b6(r3)
/* 80494FA0  2C 00 00 01 */	cmpwi r0, 1
/* 80494FA4  40 82 00 64 */	bne lbl_80495008
/* 80494FA8  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 80494FAC  38 80 00 0B */	li r4, 0xb
/* 80494FB0  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 80494FB4  38 A0 00 0C */	li r5, 0xc
/* 80494FB8  38 C0 00 08 */	li r6, 8
/* 80494FBC  38 E0 00 0F */	li r7, 0xf
/* 80494FC0  4B FF D9 B9 */	bl aQMgr_set_calendar_free_str
/* 80494FC4  3C 60 80 40 */	lis r3, lbRk_ToSeiyouReki@ha /* 0x80407658@ha */
/* 80494FC8  38 80 00 0D */	li r4, 0xd
/* 80494FCC  38 63 76 58 */	addi r3, r3, lbRk_ToSeiyouReki@l /* 0x80407658@l */
/* 80494FD0  38 A0 00 0E */	li r5, 0xe
/* 80494FD4  38 C0 00 09 */	li r6, 9
/* 80494FD8  38 E0 00 0D */	li r7, 0xd
/* 80494FDC  4B FF D9 9D */	bl aQMgr_set_calendar_free_str
/* 80494FE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80494FE4  3C C0 80 40 */	lis r6, lbRk_ToKyuuReki@ha /* 0x80407770@ha */
/* 80494FE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80494FEC  38 80 00 0F */	li r4, 0xf
/* 80494FF0  3C A3 00 02 */	addis r5, r3, 2
/* 80494FF4  38 66 77 70 */	addi r3, r6, lbRk_ToKyuuReki@l /* 0x80407770@l */
/* 80494FF8  88 C5 61 25 */	lbz r6, 0x6125(r5)
/* 80494FFC  88 E5 61 23 */	lbz r7, 0x6123(r5)
/* 80495000  38 A0 00 10 */	li r5, 0x10
/* 80495004  4B FF D9 75 */	bl aQMgr_set_calendar_free_str
lbl_80495008:
/* 80495008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049500C  7C 08 03 A6 */	mtlr r0
/* 80495010  38 21 00 10 */	addi r1, r1, 0x10
/* 80495014  4E 80 00 20 */	blr 
