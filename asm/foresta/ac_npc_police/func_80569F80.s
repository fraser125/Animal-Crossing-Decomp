lbl_80569F80:
/* 80569F80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80569F84  7C 08 02 A6 */	mflr r0
/* 80569F88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80569F8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80569F90  4B B3 0F 45 */	bl func_8009AED4
/* 80569F94  7C 7F 1B 78 */	mr r31, r3
/* 80569F98  7C 9D 23 78 */	mr r29, r4
/* 80569F9C  38 60 00 23 */	li r3, 0x23
/* 80569FA0  38 80 00 01 */	li r4, 1
/* 80569FA4  4B E3 3B 5D */	bl mEv_check_status
/* 80569FA8  2C 03 00 01 */	cmpwi r3, 1
/* 80569FAC  41 82 00 18 */	beq lbl_80569FC4
/* 80569FB0  38 60 00 0D */	li r3, 0xd
/* 80569FB4  38 80 00 01 */	li r4, 1
/* 80569FB8  4B E3 3B 49 */	bl mEv_check_status
/* 80569FBC  2C 03 00 01 */	cmpwi r3, 1
/* 80569FC0  40 82 00 24 */	bne lbl_80569FE4
lbl_80569FC4:
/* 80569FC4  7F E3 FB 78 */	mr r3, r31
/* 80569FC8  4B E0 A4 79 */	bl Actor_delete
/* 80569FCC  38 00 00 00 */	li r0, 0
/* 80569FD0  7F E3 FB 78 */	mr r3, r31
/* 80569FD4  90 1F 01 6C */	stw r0, 0x16c(r31)
/* 80569FD8  90 1F 01 60 */	stw r0, 0x160(r31)
/* 80569FDC  4B E6 61 6D */	bl mNpc_RenewalSetNpc
/* 80569FE0  48 00 00 CC */	b lbl_8056A0AC
lbl_80569FE4:
/* 80569FE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80569FE8  7F E3 FB 78 */	mr r3, r31
/* 80569FEC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80569FF0  7F A4 EB 78 */	mr r4, r29
/* 80569FF4  3F C5 00 02 */	addis r30, r5, 2
/* 80569FF8  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 80569FFC  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8056A000  7D 89 03 A6 */	mtctr r12
/* 8056A004  4E 80 04 21 */	bctrl 
/* 8056A008  2C 03 00 01 */	cmpwi r3, 1
/* 8056A00C  40 82 00 A0 */	bne lbl_8056A0AC
/* 8056A010  3C 60 80 57 */	lis r3, aPOL_schedule_proc@ha /* 0x8056A80C@ha */
/* 8056A014  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806BE76C@ha */
/* 8056A018  38 03 A8 0C */	addi r0, r3, aPOL_schedule_proc@l /* 0x8056A80C@l */
/* 8056A01C  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 8056A020  38 A4 E7 6C */	addi r5, r4, ct_data@l /* 0x806BE76C@l */
/* 8056A024  7F E3 FB 78 */	mr r3, r31
/* 8056A028  7F A4 EB 78 */	mr r4, r29
/* 8056A02C  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 8056A030  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8056A034  7D 89 03 A6 */	mtctr r12
/* 8056A038  4E 80 04 21 */	bctrl 
/* 8056A03C  38 00 00 FE */	li r0, 0xfe
/* 8056A040  3C 60 80 57 */	lis r3, aPOL_setupAction@ha /* 0x8056AF50@ha */
/* 8056A044  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8056A048  38 83 AF 50 */	addi r4, r3, aPOL_setupAction@l /* 0x8056AF50@l */
/* 8056A04C  38 00 00 00 */	li r0, 0
/* 8056A050  38 61 00 14 */	addi r3, r1, 0x14
/* 8056A054  90 9F 09 A0 */	stw r4, 0x9a0(r31)
/* 8056A058  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 8056A05C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8056A060  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8056A064  90 81 00 14 */	stw r4, 0x14(r1)
/* 8056A068  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056A06C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8056A070  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8056A074  4B E3 D3 BD */	bl mFI_GetUnitFG
/* 8056A078  A0 63 00 00 */	lhz r3, 0(r3)
/* 8056A07C  4B E7 47 D5 */	bl mPB_keep_item
/* 8056A080  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8056A084  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8056A088  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8056A08C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8056A090  38 81 00 08 */	addi r4, r1, 8
/* 8056A094  38 A0 00 01 */	li r5, 1
/* 8056A098  90 C1 00 08 */	stw r6, 8(r1)
/* 8056A09C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056A0A0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8056A0A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056A0A8  4B E3 D7 89 */	bl mFI_SetFG_common
lbl_8056A0AC:
/* 8056A0AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8056A0B0  4B B3 0E 71 */	bl func_8009AF20
/* 8056A0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056A0B8  7C 08 03 A6 */	mtlr r0
/* 8056A0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8056A0C0  4E 80 00 20 */	blr 
