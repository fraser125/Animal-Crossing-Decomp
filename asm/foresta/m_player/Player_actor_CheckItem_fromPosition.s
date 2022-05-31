lbl_804DD964:
/* 804DD964  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DD968  7C 08 02 A6 */	mflr r0
/* 804DD96C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DD970  39 61 00 30 */	addi r11, r1, 0x30
/* 804DD974  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804DD978  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 804DD97C  4B BB D5 55 */	bl func_8009AED0
/* 804DD980  7C 7D 1B 78 */	mr r29, r3
/* 804DD984  FF C0 08 90 */	fmr f30, f1
/* 804DD988  80 63 00 00 */	lwz r3, 0(r3)
/* 804DD98C  FF E0 10 90 */	fmr f31, f2
/* 804DD990  80 DD 00 04 */	lwz r6, 4(r29)
/* 804DD994  7C 9E 23 78 */	mr r30, r4
/* 804DD998  80 1D 00 08 */	lwz r0, 8(r29)
/* 804DD99C  90 61 00 14 */	stw r3, 0x14(r1)
/* 804DD9A0  7C BF 2B 78 */	mr r31, r5
/* 804DD9A4  38 61 00 14 */	addi r3, r1, 0x14
/* 804DD9A8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804DD9AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DD9B0  4B EC B6 C9 */	bl mFI_Wpos2DepositGet
/* 804DD9B4  2C 03 00 00 */	cmpwi r3, 0
/* 804DD9B8  40 82 01 24 */	bne lbl_804DDADC
/* 804DD9BC  80 BD 00 00 */	lwz r5, 0(r29)
/* 804DD9C0  38 61 00 08 */	addi r3, r1, 8
/* 804DD9C4  80 9D 00 04 */	lwz r4, 4(r29)
/* 804DD9C8  80 1D 00 08 */	lwz r0, 8(r29)
/* 804DD9CC  90 A1 00 08 */	stw r5, 8(r1)
/* 804DD9D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804DD9D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DD9D8  4B EC 9A 59 */	bl mFI_GetUnitFG
/* 804DD9DC  7C 7C 1B 79 */	or. r28, r3, r3
/* 804DD9E0  41 82 00 FC */	beq lbl_804DDADC
/* 804DD9E4  A0 9C 00 00 */	lhz r4, 0(r28)
/* 804DD9E8  38 00 00 00 */	li r0, 0
/* 804DD9EC  28 04 00 08 */	cmplwi r4, 8
/* 804DD9F0  41 80 00 10 */	blt lbl_804DDA00
/* 804DD9F4  28 04 00 0A */	cmplwi r4, 0xa
/* 804DD9F8  41 81 00 08 */	bgt lbl_804DDA00
/* 804DD9FC  38 00 00 01 */	li r0, 1
lbl_804DDA00:
/* 804DDA00  2C 00 00 00 */	cmpwi r0, 0
/* 804DDA04  41 82 00 2C */	beq lbl_804DDA30
/* 804DDA08  FC 20 F0 90 */	fmr f1, f30
/* 804DDA0C  7F A3 EB 78 */	mr r3, r29
/* 804DDA10  FC 40 F8 90 */	fmr f2, f31
/* 804DDA14  7F C4 F3 78 */	mr r4, r30
/* 804DDA18  7F E5 FB 78 */	mr r5, r31
/* 804DDA1C  4B FF FD B5 */	bl Player_actor_CheckItemPosition_forPickup
/* 804DDA20  2C 03 00 00 */	cmpwi r3, 0
/* 804DDA24  41 82 00 B8 */	beq lbl_804DDADC
/* 804DDA28  7F 83 E3 78 */	mr r3, r28
/* 804DDA2C  48 00 00 B4 */	b lbl_804DDAE0
lbl_804DDA30:
/* 804DDA30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DDA34  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 804DDA38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DDA3C  3C 63 00 02 */	addis r3, r3, 2
/* 804DDA40  2C 00 00 02 */	cmpwi r0, 2
/* 804DDA44  88 63 60 01 */	lbz r3, 0x6001(r3)
/* 804DDA48  41 82 00 24 */	beq lbl_804DDA6C
/* 804DDA4C  40 80 00 10 */	bge lbl_804DDA5C
/* 804DDA50  2C 00 00 01 */	cmpwi r0, 1
/* 804DDA54  40 80 00 10 */	bge lbl_804DDA64
/* 804DDA58  48 00 00 3C */	b lbl_804DDA94
lbl_804DDA5C:
/* 804DDA5C  2C 00 00 04 */	cmpwi r0, 4
/* 804DDA60  40 80 00 34 */	bge lbl_804DDA94
lbl_804DDA64:
/* 804DDA64  2C 03 00 00 */	cmpwi r3, 0
/* 804DDA68  40 82 00 74 */	bne lbl_804DDADC
lbl_804DDA6C:
/* 804DDA6C  FC 20 F0 90 */	fmr f1, f30
/* 804DDA70  7F A3 EB 78 */	mr r3, r29
/* 804DDA74  FC 40 F8 90 */	fmr f2, f31
/* 804DDA78  7F C4 F3 78 */	mr r4, r30
/* 804DDA7C  7F E5 FB 78 */	mr r5, r31
/* 804DDA80  4B FF FD 51 */	bl Player_actor_CheckItemPosition_forPickup
/* 804DDA84  2C 03 00 00 */	cmpwi r3, 0
/* 804DDA88  41 82 00 54 */	beq lbl_804DDADC
/* 804DDA8C  7F 83 E3 78 */	mr r3, r28
/* 804DDA90  48 00 00 50 */	b lbl_804DDAE0
lbl_804DDA94:
/* 804DDA94  28 04 09 00 */	cmplwi r4, 0x900
/* 804DDA98  38 00 00 00 */	li r0, 0
/* 804DDA9C  41 80 00 10 */	blt lbl_804DDAAC
/* 804DDAA0  28 04 09 20 */	cmplwi r4, 0x920
/* 804DDAA4  41 81 00 08 */	bgt lbl_804DDAAC
/* 804DDAA8  38 00 00 01 */	li r0, 1
lbl_804DDAAC:
/* 804DDAAC  2C 00 00 00 */	cmpwi r0, 0
/* 804DDAB0  41 82 00 2C */	beq lbl_804DDADC
/* 804DDAB4  FC 20 F0 90 */	fmr f1, f30
/* 804DDAB8  7F A3 EB 78 */	mr r3, r29
/* 804DDABC  FC 40 F8 90 */	fmr f2, f31
/* 804DDAC0  7F C4 F3 78 */	mr r4, r30
/* 804DDAC4  7F E5 FB 78 */	mr r5, r31
/* 804DDAC8  4B FF FD 09 */	bl Player_actor_CheckItemPosition_forPickup
/* 804DDACC  2C 03 00 00 */	cmpwi r3, 0
/* 804DDAD0  41 82 00 0C */	beq lbl_804DDADC
/* 804DDAD4  7F 83 E3 78 */	mr r3, r28
/* 804DDAD8  48 00 00 08 */	b lbl_804DDAE0
lbl_804DDADC:
/* 804DDADC  38 60 00 00 */	li r3, 0
lbl_804DDAE0:
/* 804DDAE0  39 61 00 30 */	addi r11, r1, 0x30
/* 804DDAE4  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804DDAE8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 804DDAEC  4B BB D4 31 */	bl func_8009AF1C
/* 804DDAF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DDAF4  7C 08 03 A6 */	mtlr r0
/* 804DDAF8  38 21 00 40 */	addi r1, r1, 0x40
/* 804DDAFC  4E 80 00 20 */	blr 
