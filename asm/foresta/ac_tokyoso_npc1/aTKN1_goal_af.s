lbl_8058D218:
/* 8058D218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D21C  7C 08 02 A6 */	mflr r0
/* 8058D220  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058D228  7C 7F 1B 78 */	mr r31, r3
/* 8058D22C  38 60 00 0F */	li r3, 0xf
/* 8058D230  93 C1 00 08 */	stw r30, 8(r1)
/* 8058D234  7C 9E 23 78 */	mr r30, r4
/* 8058D238  38 80 00 08 */	li r4, 8
/* 8058D23C  4B E1 0B 91 */	bl mEv_get_save_area
/* 8058D240  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8058D244  38 A0 08 00 */	li r5, 0x800
/* 8058D248  A0 C3 00 02 */	lhz r6, 2(r3)
/* 8058D24C  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058D250  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058D254  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058D258  7C A0 00 30 */	slw r0, r5, r0
/* 8058D25C  7C C0 00 39 */	and. r0, r6, r0
/* 8058D260  41 82 00 50 */	beq lbl_8058D2B0
/* 8058D264  38 00 00 12 */	li r0, 0x12
/* 8058D268  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058D26C  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 8058D270  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058D274  3C 83 00 02 */	addis r4, r3, 2
/* 8058D278  7F E3 FB 78 */	mr r3, r31
/* 8058D27C  A0 BF 00 06 */	lhz r5, 6(r31)
/* 8058D280  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058D284  3C A5 FF FF */	addis r5, r5, 0xffff
/* 8058D288  38 05 2F D3 */	addi r0, r5, 0x2fd3
/* 8058D28C  81 84 00 1C */	lwz r12, 0x1c(r4)
/* 8058D290  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 8058D294  38 84 00 02 */	addi r4, r4, 2
/* 8058D298  7D 89 03 A6 */	mtctr r12
/* 8058D29C  4E 80 04 21 */	bctrl 
/* 8058D2A0  7F E3 FB 78 */	mr r3, r31
/* 8058D2A4  7F C4 F3 78 */	mr r4, r30
/* 8058D2A8  38 A0 00 01 */	li r5, 1
/* 8058D2AC  48 00 02 71 */	bl aTKN1_setup_think_proc
lbl_8058D2B0:
/* 8058D2B0  88 1F 09 A8 */	lbz r0, 0x9a8(r31)
/* 8058D2B4  28 00 00 10 */	cmplwi r0, 0x10
/* 8058D2B8  40 82 00 68 */	bne lbl_8058D320
/* 8058D2BC  3C 80 80 65 */	lis r4, lit_726@ha /* 0x80649BC0@ha */
/* 8058D2C0  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8058D2C4  C0 24 9B C0 */	lfs f1, lit_726@l(r4)  /* 0x80649BC0@l */
/* 8058D2C8  4B DE 31 C1 */	bl cKF_FrameControl_passCheck_now
/* 8058D2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8058D2D0  41 82 00 50 */	beq lbl_8058D320
/* 8058D2D4  7F E3 FB 78 */	mr r3, r31
/* 8058D2D8  4B E4 4D 81 */	bl mNpc_GetNpcSoundSpec
/* 8058D2DC  2C 03 00 04 */	cmpwi r3, 4
/* 8058D2E0  41 82 00 24 */	beq lbl_8058D304
/* 8058D2E4  40 80 00 30 */	bge lbl_8058D314
/* 8058D2E8  2C 03 00 03 */	cmpwi r3, 3
/* 8058D2EC  40 80 00 08 */	bge lbl_8058D2F4
/* 8058D2F0  48 00 00 24 */	b lbl_8058D314
lbl_8058D2F4:
/* 8058D2F4  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058D2F8  38 60 01 59 */	li r3, 0x159
/* 8058D2FC  48 0A 0C AD */	bl sAdo_OngenTrgStart
/* 8058D300  48 00 00 20 */	b lbl_8058D320
lbl_8058D304:
/* 8058D304  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058D308  38 60 01 5A */	li r3, 0x15a
/* 8058D30C  48 0A 0C 9D */	bl sAdo_OngenTrgStart
/* 8058D310  48 00 00 10 */	b lbl_8058D320
lbl_8058D314:
/* 8058D314  38 9F 00 28 */	addi r4, r31, 0x28
/* 8058D318  38 60 01 58 */	li r3, 0x158
/* 8058D31C  48 0A 0C 8D */	bl sAdo_OngenTrgStart
lbl_8058D320:
/* 8058D320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058D328  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058D32C  7C 08 03 A6 */	mtlr r0
/* 8058D330  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D334  4E 80 00 20 */	blr 
