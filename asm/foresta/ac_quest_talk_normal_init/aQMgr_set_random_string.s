lbl_80495060:
/* 80495060  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80495064  7C 08 02 A6 */	mflr r0
/* 80495068  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049506C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80495070  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80495074  39 61 00 30 */	addi r11, r1, 0x30
/* 80495078  4B C0 5E 55 */	bl func_8009AECC
/* 8049507C  FF E0 08 90 */	fmr f31, f1
/* 80495080  7C 7B 1B 78 */	mr r27, r3
/* 80495084  7C 9C 23 78 */	mr r28, r4
/* 80495088  7C BD 2B 78 */	mr r29, r5
/* 8049508C  7C DE 33 78 */	mr r30, r6
/* 80495090  4B BC 7C 65 */	bl fqrand
/* 80495094  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80495098  2C 1E 00 00 */	cmpwi r30, 0
/* 8049509C  FC 00 00 1E */	fctiwz f0, f0
/* 804950A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804950A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804950A8  41 80 00 10 */	blt lbl_804950B8
/* 804950AC  7C 1E F8 00 */	cmpw r30, r31
/* 804950B0  40 82 00 08 */	bne lbl_804950B8
/* 804950B4  3B FF 00 01 */	addi r31, r31, 1
lbl_804950B8:
/* 804950B8  7F 63 DB 78 */	mr r3, r27
/* 804950BC  7C BD FA 14 */	add r5, r29, r31
/* 804950C0  38 80 00 10 */	li r4, 0x10
/* 804950C4  4B F5 9C 09 */	bl mString_Load_StringFromRom
/* 804950C8  4B F2 A5 E1 */	bl func_803BF6A8
/* 804950CC  7F 84 E3 78 */	mr r4, r28
/* 804950D0  7F 65 DB 78 */	mr r5, r27
/* 804950D4  38 C0 00 10 */	li r6, 0x10
/* 804950D8  4B F2 AC FD */	bl mMsg_Set_item_str
/* 804950DC  7F E3 FB 78 */	mr r3, r31
/* 804950E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804950E4  39 61 00 30 */	addi r11, r1, 0x30
/* 804950E8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804950EC  4B C0 5E 2D */	bl func_8009AF18
/* 804950F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804950F4  7C 08 03 A6 */	mtlr r0
/* 804950F8  38 21 00 40 */	addi r1, r1, 0x40
/* 804950FC  4E 80 00 20 */	blr 
