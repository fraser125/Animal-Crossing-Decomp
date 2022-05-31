lbl_803BBEC0:
/* 803BBEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BBEC4  7C 08 02 A6 */	mflr r0
/* 803BBEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BBECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BBED0  7C 9F 23 78 */	mr r31, r4
/* 803BBED4  4B FF FC 01 */	bl LightsN_new_diffuse
/* 803BBED8  28 03 00 00 */	cmplwi r3, 0
/* 803BBEDC  41 82 00 40 */	beq lbl_803BBF1C
/* 803BBEE0  88 1F 00 03 */	lbz r0, 3(r31)
/* 803BBEE4  98 03 00 04 */	stb r0, 4(r3)
/* 803BBEE8  98 03 00 00 */	stb r0, 0(r3)
/* 803BBEEC  88 1F 00 04 */	lbz r0, 4(r31)
/* 803BBEF0  98 03 00 05 */	stb r0, 5(r3)
/* 803BBEF4  98 03 00 01 */	stb r0, 1(r3)
/* 803BBEF8  88 1F 00 05 */	lbz r0, 5(r31)
/* 803BBEFC  98 03 00 06 */	stb r0, 6(r3)
/* 803BBF00  98 03 00 02 */	stb r0, 2(r3)
/* 803BBF04  88 1F 00 00 */	lbz r0, 0(r31)
/* 803BBF08  98 03 00 08 */	stb r0, 8(r3)
/* 803BBF0C  88 1F 00 01 */	lbz r0, 1(r31)
/* 803BBF10  98 03 00 09 */	stb r0, 9(r3)
/* 803BBF14  88 1F 00 02 */	lbz r0, 2(r31)
/* 803BBF18  98 03 00 0A */	stb r0, 0xa(r3)
lbl_803BBF1C:
/* 803BBF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BBF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BBF24  7C 08 03 A6 */	mtlr r0
/* 803BBF28  38 21 00 10 */	addi r1, r1, 0x10
/* 803BBF2C  4E 80 00 20 */	blr 
