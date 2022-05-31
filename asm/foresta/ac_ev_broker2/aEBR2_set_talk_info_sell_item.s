lbl_8051AFE8:
/* 8051AFE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051AFEC  7C 08 02 A6 */	mflr r0
/* 8051AFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051AFF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051AFF8  4B B7 FE DD */	bl func_8009AED4
/* 8051AFFC  7C 7D 1B 78 */	mr r29, r3
/* 8051B000  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051B004  8B FD 09 A4 */	lbz r31, 0x9a4(r29)
/* 8051B008  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051B00C  3C 63 00 02 */	addis r3, r3, 2
/* 8051B010  38 80 00 00 */	li r4, 0
/* 8051B014  7F FF 07 74 */	extsb r31, r31
/* 8051B018  57 E0 08 3C */	slwi r0, r31, 1
/* 8051B01C  7C 63 02 14 */	add r3, r3, r0
/* 8051B020  A3 C3 04 DC */	lhz r30, 0x4dc(r3)
/* 8051B024  7F C3 F3 78 */	mr r3, r30
/* 8051B028  4B FF FA B9 */	bl aEBR2_set_msg_data_item_name
/* 8051B02C  7F C3 F3 78 */	mr r3, r30
/* 8051B030  4B FF FA 5D */	bl aEBR2_set_msg_data_price
/* 8051B034  38 60 00 01 */	li r3, 1
/* 8051B038  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8051B03C  7C 7E F8 30 */	slw r30, r3, r31
/* 8051B040  7C 00 F0 39 */	and. r0, r0, r30
/* 8051B044  41 82 00 0C */	beq lbl_8051B050
/* 8051B048  38 60 07 A1 */	li r3, 0x7a1
/* 8051B04C  48 00 00 30 */	b lbl_8051B07C
lbl_8051B050:
/* 8051B050  4B B4 1C A5 */	bl fqrand
/* 8051B054  3C 60 80 65 */	lis r3, lit_639@ha /* 0x806490B8@ha */
/* 8051B058  88 1D 09 A5 */	lbz r0, 0x9a5(r29)
/* 8051B05C  C0 03 90 B8 */	lfs f0, lit_639@l(r3)  /* 0x806490B8@l */
/* 8051B060  7C 00 F3 78 */	or r0, r0, r30
/* 8051B064  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051B068  98 1D 09 A5 */	stb r0, 0x9a5(r29)
/* 8051B06C  FC 00 00 1E */	fctiwz f0, f0
/* 8051B070  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051B074  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051B078  38 63 07 93 */	addi r3, r3, 0x793
lbl_8051B07C:
/* 8051B07C  4B E7 D4 99 */	bl mDemo_Set_msg_num
/* 8051B080  39 61 00 20 */	addi r11, r1, 0x20
/* 8051B084  4B B7 FE 9D */	bl func_8009AF20
/* 8051B088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051B08C  7C 08 03 A6 */	mtlr r0
/* 8051B090  38 21 00 20 */	addi r1, r1, 0x20
/* 8051B094  4E 80 00 20 */	blr 
