lbl_804B99E4:
/* 804B99E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B99E8  7C 08 02 A6 */	mflr r0
/* 804B99EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B99F0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B99F4  4B BE 14 DD */	bl func_8009AED0
/* 804B99F8  7C 9D 23 78 */	mr r29, r4
/* 804B99FC  7C 7C 1B 78 */	mr r28, r3
/* 804B9A00  80 E4 00 00 */	lwz r7, 0(r4)
/* 804B9A04  7C BE 2B 78 */	mr r30, r5
/* 804B9A08  80 04 00 04 */	lwz r0, 4(r4)
/* 804B9A0C  7C DF 33 78 */	mr r31, r6
/* 804B9A10  38 61 00 0C */	addi r3, r1, 0xc
/* 804B9A14  38 81 00 08 */	addi r4, r1, 8
/* 804B9A18  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804B9A1C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B9A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B9A24  80 1D 00 08 */	lwz r0, 8(r29)
/* 804B9A28  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B9A2C  4B EE B9 3D */	bl mFI_Wpos2UtNum
/* 804B9A30  2C 03 00 00 */	cmpwi r3, 0
/* 804B9A34  41 82 00 28 */	beq lbl_804B9A5C
/* 804B9A38  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B9A3C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804B9A40  80 A1 00 08 */	lwz r5, 8(r1)
/* 804B9A44  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B9A48  38 C0 00 00 */	li r6, 0
/* 804B9A4C  4B EE DC 01 */	bl mFI_UtNumtoFGSet_common
/* 804B9A50  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B9A54  80 81 00 08 */	lwz r4, 8(r1)
/* 804B9A58  4B EE F5 39 */	bl mFI_UtNum2DepositOFF
lbl_804B9A5C:
/* 804B9A5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B9A60  7F 84 E3 78 */	mr r4, r28
/* 804B9A64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B9A68  7F A5 EB 78 */	mr r5, r29
/* 804B9A6C  3C 63 00 02 */	addis r3, r3, 2
/* 804B9A70  7F C6 F3 78 */	mr r6, r30
/* 804B9A74  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B9A78  7F E7 FB 78 */	mr r7, r31
/* 804B9A7C  39 00 00 01 */	li r8, 1
/* 804B9A80  39 20 00 00 */	li r9, 0
/* 804B9A84  80 63 00 00 */	lwz r3, 0(r3)
/* 804B9A88  3C 63 00 01 */	addis r3, r3, 1
/* 804B9A8C  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804B9A90  48 00 00 71 */	bl bIT_actor_hole_effect_entry
/* 804B9A94  39 61 00 30 */	addi r11, r1, 0x30
/* 804B9A98  4B BE 14 85 */	bl func_8009AF1C
/* 804B9A9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B9AA0  7C 08 03 A6 */	mtlr r0
/* 804B9AA4  38 21 00 30 */	addi r1, r1, 0x30
/* 804B9AA8  4E 80 00 20 */	blr 
