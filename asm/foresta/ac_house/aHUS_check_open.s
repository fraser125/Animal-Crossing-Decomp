lbl_805B0200:
/* 805B0200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B0204  7C 08 02 A6 */	mflr r0
/* 805B0208  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B020C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0210  4B AE AC C5 */	bl func_8009AED4
/* 805B0214  7C 7D 1B 78 */	mr r29, r3
/* 805B0218  7C 9E 23 78 */	mr r30, r4
/* 805B021C  7F A4 EB 78 */	mr r4, r29
/* 805B0220  3B E0 00 00 */	li r31, 0
/* 805B0224  38 60 00 03 */	li r3, 3
/* 805B0228  4B DE A0 3D */	bl mDemo_Check
/* 805B022C  2C 03 00 00 */	cmpwi r3, 0
/* 805B0230  41 82 00 0C */	beq lbl_805B023C
/* 805B0234  38 60 00 02 */	li r3, 2
/* 805B0238  48 00 00 78 */	b lbl_805B02B0
lbl_805B023C:
/* 805B023C  80 1D 02 B0 */	lwz r0, 0x2b0(r29)
/* 805B0240  2C 00 00 00 */	cmpwi r0, 0
/* 805B0244  40 82 00 34 */	bne lbl_805B0278
/* 805B0248  7F A3 EB 78 */	mr r3, r29
/* 805B024C  7F C4 F3 78 */	mr r4, r30
/* 805B0250  4B FF FE 7D */	bl aHUS_check_player
/* 805B0254  2C 03 00 02 */	cmpwi r3, 2
/* 805B0258  40 82 00 18 */	bne lbl_805B0270
/* 805B025C  3C 60 80 5B */	lis r3, aHUS_open_door_demo_ct@ha /* 0x805B01CC@ha */
/* 805B0260  7F A4 EB 78 */	mr r4, r29
/* 805B0264  38 A3 01 CC */	addi r5, r3, aHUS_open_door_demo_ct@l /* 0x805B01CC@l */
/* 805B0268  38 60 00 03 */	li r3, 3
/* 805B026C  4B DE 9E F1 */	bl mDemo_Request
lbl_805B0270:
/* 805B0270  3B E0 00 00 */	li r31, 0
/* 805B0274  48 00 00 38 */	b lbl_805B02AC
lbl_805B0278:
/* 805B0278  2C 00 00 01 */	cmpwi r0, 1
/* 805B027C  41 82 00 0C */	beq lbl_805B0288
/* 805B0280  2C 00 00 02 */	cmpwi r0, 2
/* 805B0284  40 82 00 0C */	bne lbl_805B0290
lbl_805B0288:
/* 805B0288  3B E0 00 01 */	li r31, 1
/* 805B028C  48 00 00 20 */	b lbl_805B02AC
lbl_805B0290:
/* 805B0290  2C 00 00 03 */	cmpwi r0, 3
/* 805B0294  40 82 00 0C */	bne lbl_805B02A0
/* 805B0298  3B E0 00 02 */	li r31, 2
/* 805B029C  48 00 00 10 */	b lbl_805B02AC
lbl_805B02A0:
/* 805B02A0  2C 00 00 04 */	cmpwi r0, 4
/* 805B02A4  40 82 00 08 */	bne lbl_805B02AC
/* 805B02A8  3B E0 00 03 */	li r31, 3
lbl_805B02AC:
/* 805B02AC  7F E3 FB 78 */	mr r3, r31
lbl_805B02B0:
/* 805B02B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805B02B4  4B AE AC 6D */	bl func_8009AF20
/* 805B02B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B02BC  7C 08 03 A6 */	mtlr r0
/* 805B02C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B02C4  4E 80 00 20 */	blr 
