lbl_80589390:
/* 80589390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80589394  7C 08 02 A6 */	mflr r0
/* 80589398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058939C  39 61 00 20 */	addi r11, r1, 0x20
/* 805893A0  4B B1 1B 31 */	bl func_8009AED0
/* 805893A4  7C 7C 1B 78 */	mr r28, r3
/* 805893A8  7F 9D E3 78 */	mr r29, r28
/* 805893AC  4B E4 8B 55 */	bl mNpc_GetNpcLooks
/* 805893B0  7C 7E 1B 78 */	mr r30, r3
/* 805893B4  38 60 00 23 */	li r3, 0x23
/* 805893B8  38 80 00 01 */	li r4, 1
/* 805893BC  4B E1 47 45 */	bl mEv_check_status
/* 805893C0  A0 9C 00 06 */	lhz r4, 6(r28)
/* 805893C4  7C 60 00 34 */	cntlzw r0, r3
/* 805893C8  54 1C D9 7E */	srwi r28, r0, 5
/* 805893CC  3F E4 FF FF */	addis r31, r4, 0xffff
/* 805893D0  3B FF 2F B2 */	addi r31, r31, 0x2fb2
/* 805893D4  2C 1F 00 04 */	cmpwi r31, 4
/* 805893D8  40 81 00 24 */	ble lbl_805893FC
/* 805893DC  88 1D 09 B4 */	lbz r0, 0x9b4(r29)
/* 805893E0  28 00 00 FF */	cmplwi r0, 0xff
/* 805893E4  40 82 00 0C */	bne lbl_805893F0
/* 805893E8  4B E6 2D 71 */	bl func_803EC158
/* 805893EC  98 7D 09 B4 */	stb r3, 0x9b4(r29)
lbl_805893F0:
/* 805893F0  7F A3 EB 78 */	mr r3, r29
/* 805893F4  4B E6 36 89 */	bl mSC_Radio_Set_Talk_Proc
/* 805893F8  48 00 00 B8 */	b lbl_805894B0
lbl_805893FC:
/* 805893FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80589400  40 82 00 38 */	bne lbl_80589438
/* 80589404  4B AD 38 F1 */	bl fqrand
/* 80589408  3C 80 80 65 */	lis r4, lit_740@ha /* 0x80649B38@ha */
/* 8058940C  3C 60 80 6C */	lis r3, msg_base2@ha /* 0x806C1FF0@ha */
/* 80589410  C0 04 9B 38 */	lfs f0, lit_740@l(r4)  /* 0x80649B38@l */
/* 80589414  57 80 10 3A */	slwi r0, r28, 2
/* 80589418  38 63 1F F0 */	addi r3, r3, msg_base2@l /* 0x806C1FF0@l */
/* 8058941C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80589420  7C 03 00 2E */	lwzx r0, r3, r0
/* 80589424  FC 00 00 1E */	fctiwz f0, f0
/* 80589428  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058942C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80589430  7C 60 1A 14 */	add r3, r0, r3
/* 80589434  48 00 00 7C */	b lbl_805894B0
lbl_80589438:
/* 80589438  88 1D 09 94 */	lbz r0, 0x994(r29)
/* 8058943C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80589440  40 82 00 2C */	bne lbl_8058946C
/* 80589444  1C 9C 00 18 */	mulli r4, r28, 0x18
/* 80589448  3C 60 80 6C */	lis r3, msg_base@ha /* 0x806C1FC0@ha */
/* 8058944C  57 C0 10 3A */	slwi r0, r30, 2
/* 80589450  38 63 1F C0 */	addi r3, r3, msg_base@l /* 0x806C1FC0@l */
/* 80589454  7C 63 22 14 */	add r3, r3, r4
/* 80589458  1C 9F 00 03 */	mulli r4, r31, 3
/* 8058945C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80589460  7C 60 22 14 */	add r3, r0, r4
/* 80589464  38 63 00 02 */	addi r3, r3, 2
/* 80589468  48 00 00 48 */	b lbl_805894B0
lbl_8058946C:
/* 8058946C  4B AD 38 89 */	bl fqrand
/* 80589470  3C 60 80 65 */	lis r3, lit_741@ha /* 0x80649B3C@ha */
/* 80589474  3C 80 80 6C */	lis r4, msg_base@ha /* 0x806C1FC0@ha */
/* 80589478  38 A3 9B 3C */	addi r5, r3, lit_741@l /* 0x80649B3C@l */
/* 8058947C  57 C3 10 3A */	slwi r3, r30, 2
/* 80589480  C0 05 00 00 */	lfs f0, 0(r5)
/* 80589484  1C BC 00 18 */	mulli r5, r28, 0x18
/* 80589488  38 04 1F C0 */	addi r0, r4, msg_base@l /* 0x806C1FC0@l */
/* 8058948C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80589490  7C 80 2A 14 */	add r4, r0, r5
/* 80589494  1C 1F 00 03 */	mulli r0, r31, 3
/* 80589498  7C 84 18 2E */	lwzx r4, r4, r3
/* 8058949C  FC 00 00 1E */	fctiwz f0, f0
/* 805894A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805894A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805894A8  7C 63 02 14 */	add r3, r3, r0
/* 805894AC  7C 64 1A 14 */	add r3, r4, r3
lbl_805894B0:
/* 805894B0  4B E0 F0 65 */	bl mDemo_Set_msg_num
/* 805894B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805894B8  4B B1 1A 65 */	bl func_8009AF1C
/* 805894BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805894C0  7C 08 03 A6 */	mtlr r0
/* 805894C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805894C8  4E 80 00 20 */	blr 
