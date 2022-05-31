lbl_8048FC48:
/* 8048FC48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048FC4C  7C 08 02 A6 */	mflr r0
/* 8048FC50  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048FC54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8048FC58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8048FC5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8048FC60  4B C0 B2 6D */	bl func_8009AECC
/* 8048FC64  FF E0 08 90 */	fmr f31, f1
/* 8048FC68  7C 7B 1B 78 */	mr r27, r3
/* 8048FC6C  7C 9C 23 78 */	mr r28, r4
/* 8048FC70  7C BD 2B 78 */	mr r29, r5
/* 8048FC74  7C DE 33 78 */	mr r30, r6
/* 8048FC78  4B BC D0 7D */	bl fqrand
/* 8048FC7C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8048FC80  2C 1E 00 00 */	cmpwi r30, 0
/* 8048FC84  FC 00 00 1E */	fctiwz f0, f0
/* 8048FC88  D8 01 00 08 */	stfd f0, 8(r1)
/* 8048FC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FC90  41 80 00 10 */	blt lbl_8048FCA0
/* 8048FC94  7C 1F F0 00 */	cmpw r31, r30
/* 8048FC98  40 82 00 08 */	bne lbl_8048FCA0
/* 8048FC9C  3B FF 00 01 */	addi r31, r31, 1
lbl_8048FCA0:
/* 8048FCA0  7F 63 DB 78 */	mr r3, r27
/* 8048FCA4  7C BD FA 14 */	add r5, r29, r31
/* 8048FCA8  38 80 00 10 */	li r4, 0x10
/* 8048FCAC  4B F5 F0 21 */	bl mString_Load_StringFromRom
/* 8048FCB0  4B F2 F9 F9 */	bl func_803BF6A8
/* 8048FCB4  7F 84 E3 78 */	mr r4, r28
/* 8048FCB8  7F 65 DB 78 */	mr r5, r27
/* 8048FCBC  38 C0 00 10 */	li r6, 0x10
/* 8048FCC0  4B F3 01 15 */	bl mMsg_Set_item_str
/* 8048FCC4  7F E3 FB 78 */	mr r3, r31
/* 8048FCC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8048FCCC  39 61 00 30 */	addi r11, r1, 0x30
/* 8048FCD0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8048FCD4  4B C0 B2 45 */	bl func_8009AF18
/* 8048FCD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048FCDC  7C 08 03 A6 */	mtlr r0
/* 8048FCE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8048FCE4  4E 80 00 20 */	blr 
