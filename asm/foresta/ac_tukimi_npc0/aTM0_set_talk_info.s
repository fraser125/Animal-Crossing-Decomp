lbl_8058DCA0:
/* 8058DCA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058DCA4  7C 08 02 A6 */	mflr r0
/* 8058DCA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058DCAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8058DCB0  4B B0 D2 21 */	bl func_8009AED0
/* 8058DCB4  7C 7C 1B 78 */	mr r28, r3
/* 8058DCB8  4B E3 19 F1 */	bl func_803BF6A8
/* 8058DCBC  7C 60 1B 78 */	mr r0, r3
/* 8058DCC0  7F 83 E3 78 */	mr r3, r28
/* 8058DCC4  7C 1E 03 78 */	mr r30, r0
/* 8058DCC8  4B E4 42 39 */	bl mNpc_GetNpcLooks
/* 8058DCCC  3C 80 80 6C */	lis r4, msg_base@ha /* 0x806C246C@ha */
/* 8058DCD0  7C 7F 1B 78 */	mr r31, r3
/* 8058DCD4  38 04 24 6C */	addi r0, r4, msg_base@l /* 0x806C246C@l */
/* 8058DCD8  3B 80 00 00 */	li r28, 0
/* 8058DCDC  7C 1D 03 78 */	mr r29, r0
lbl_8058DCE0:
/* 8058DCE0  3C 7C 00 01 */	addis r3, r28, 1
/* 8058DCE4  38 03 D0 3F */	addi r0, r3, -12225
/* 8058DCE8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8058DCEC  4B E4 0E FD */	bl mNpc_GetSameEventNpc
/* 8058DCF0  28 03 00 00 */	cmplwi r3, 0
/* 8058DCF4  41 82 00 44 */	beq lbl_8058DD38
/* 8058DCF8  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8058DCFC  A0 83 00 00 */	lhz r4, 0(r3)
/* 8058DD00  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 8058DD04  38 A0 00 04 */	li r5, 4
/* 8058DD08  80 63 00 00 */	lwz r3, 0(r3)
/* 8058DD0C  38 63 1D A8 */	addi r3, r3, 0x1da8
/* 8058DD10  4B DE 80 31 */	bl Actor_info_fgName_search
/* 8058DD14  7C 60 1B 78 */	mr r0, r3
/* 8058DD18  38 61 00 08 */	addi r3, r1, 8
/* 8058DD1C  7C 04 03 78 */	mr r4, r0
/* 8058DD20  4B E4 3E 71 */	bl mNpc_GetNpcWorldName
/* 8058DD24  7F C3 F3 78 */	mr r3, r30
/* 8058DD28  38 9C 00 01 */	addi r4, r28, 1
/* 8058DD2C  38 A1 00 08 */	addi r5, r1, 8
/* 8058DD30  38 C0 00 08 */	li r6, 8
/* 8058DD34  4B E3 1F 21 */	bl mMsg_Set_free_str
lbl_8058DD38:
/* 8058DD38  3B 9C 00 01 */	addi r28, r28, 1
/* 8058DD3C  2C 1C 00 05 */	cmpwi r28, 5
/* 8058DD40  41 80 FF A0 */	blt lbl_8058DCE0
/* 8058DD44  38 60 00 25 */	li r3, 0x25
/* 8058DD48  38 80 00 01 */	li r4, 1
/* 8058DD4C  4B E0 FD B5 */	bl mEv_check_status
/* 8058DD50  2C 03 00 01 */	cmpwi r3, 1
/* 8058DD54  40 82 00 10 */	bne lbl_8058DD64
/* 8058DD58  3C 60 80 6C */	lis r3, msg_base2@ha /* 0x806C2484@ha */
/* 8058DD5C  38 03 24 84 */	addi r0, r3, msg_base2@l /* 0x806C2484@l */
/* 8058DD60  7C 1D 03 78 */	mr r29, r0
lbl_8058DD64:
/* 8058DD64  4B AC EF 91 */	bl fqrand
/* 8058DD68  3C 60 80 65 */	lis r3, lit_556@ha /* 0x80649BCC@ha */
/* 8058DD6C  57 E0 10 3A */	slwi r0, r31, 2
/* 8058DD70  C0 03 9B CC */	lfs f0, lit_556@l(r3)  /* 0x80649BCC@l */
/* 8058DD74  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8058DD78  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058DD7C  FC 00 00 1E */	fctiwz f0, f0
/* 8058DD80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058DD84  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8058DD88  7C 60 1A 14 */	add r3, r0, r3
/* 8058DD8C  4B E0 A7 89 */	bl mDemo_Set_msg_num
/* 8058DD90  39 61 00 30 */	addi r11, r1, 0x30
/* 8058DD94  4B B0 D1 89 */	bl func_8009AF1C
/* 8058DD98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058DD9C  7C 08 03 A6 */	mtlr r0
/* 8058DDA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8058DDA4  4E 80 00 20 */	blr 
