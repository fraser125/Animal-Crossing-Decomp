lbl_805D8B80:
/* 805D8B80  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D8B84  7C 08 02 A6 */	mflr r0
/* 805D8B88  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D8B8C  39 61 00 40 */	addi r11, r1, 0x40
/* 805D8B90  4B AC 23 25 */	bl func_8009AEB4
/* 805D8B94  7C 95 23 78 */	mr r21, r4
/* 805D8B98  7C D7 33 78 */	mr r23, r6
/* 805D8B9C  83 E4 00 28 */	lwz r31, 0x28(r4)
/* 805D8BA0  38 00 00 00 */	li r0, 0
/* 805D8BA4  7C B6 2B 78 */	mr r22, r5
/* 805D8BA8  7C F8 3B 78 */	mr r24, r7
/* 805D8BAC  B0 06 00 00 */	sth r0, 0(r6)
/* 805D8BB0  7D 19 43 78 */	mr r25, r8
/* 805D8BB4  3B A0 00 00 */	li r29, 0
/* 805D8BB8  3B 80 00 00 */	li r28, 0
/* 805D8BBC  B0 05 00 00 */	sth r0, 0(r5)
/* 805D8BC0  3B 60 00 01 */	li r27, 1
/* 805D8BC4  3B 40 00 00 */	li r26, 0
/* 805D8BC8  B0 07 00 00 */	sth r0, 0(r7)
/* 805D8BCC  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805D8BD0  2C 00 00 07 */	cmpwi r0, 7
/* 805D8BD4  40 82 00 08 */	bne lbl_805D8BDC
/* 805D8BD8  3B 60 00 00 */	li r27, 0
lbl_805D8BDC:
/* 805D8BDC  3B C0 00 00 */	li r30, 0
/* 805D8BE0  48 00 00 E4 */	b lbl_805D8CC4
lbl_805D8BE4:
/* 805D8BE4  88 7F 00 00 */	lbz r3, 0(r31)
/* 805D8BE8  28 03 00 CD */	cmplwi r3, 0xcd
/* 805D8BEC  40 82 00 2C */	bne lbl_805D8C18
/* 805D8BF0  AB B6 00 00 */	lha r29, 0(r22)
/* 805D8BF4  38 00 00 00 */	li r0, 0
/* 805D8BF8  AB 98 00 00 */	lha r28, 0(r24)
/* 805D8BFC  38 80 00 01 */	li r4, 1
/* 805D8C00  B0 16 00 00 */	sth r0, 0(r22)
/* 805D8C04  B0 18 00 00 */	sth r0, 0(r24)
/* 805D8C08  A8 77 00 00 */	lha r3, 0(r23)
/* 805D8C0C  38 03 00 01 */	addi r0, r3, 1
/* 805D8C10  B0 17 00 00 */	sth r0, 0(r23)
/* 805D8C14  48 00 00 68 */	b lbl_805D8C7C
lbl_805D8C18:
/* 805D8C18  7F 64 DB 78 */	mr r4, r27
/* 805D8C1C  4B DD 6A 81 */	bl mFont_GetCodeWidth
/* 805D8C20  A8 98 00 00 */	lha r4, 0(r24)
/* 805D8C24  7C 65 07 34 */	extsh r5, r3
/* 805D8C28  A8 15 00 1C */	lha r0, 0x1c(r21)
/* 805D8C2C  7C 64 2A 14 */	add r3, r4, r5
/* 805D8C30  7C 03 00 00 */	cmpw r3, r0
/* 805D8C34  40 81 00 2C */	ble lbl_805D8C60
/* 805D8C38  AB B6 00 00 */	lha r29, 0(r22)
/* 805D8C3C  38 00 00 01 */	li r0, 1
/* 805D8C40  7C 9C 23 78 */	mr r28, r4
/* 805D8C44  38 80 00 02 */	li r4, 2
/* 805D8C48  B0 16 00 00 */	sth r0, 0(r22)
/* 805D8C4C  B0 B8 00 00 */	sth r5, 0(r24)
/* 805D8C50  A8 77 00 00 */	lha r3, 0(r23)
/* 805D8C54  38 03 00 01 */	addi r0, r3, 1
/* 805D8C58  B0 17 00 00 */	sth r0, 0(r23)
/* 805D8C5C  48 00 00 20 */	b lbl_805D8C7C
lbl_805D8C60:
/* 805D8C60  A8 76 00 00 */	lha r3, 0(r22)
/* 805D8C64  38 80 00 00 */	li r4, 0
/* 805D8C68  38 03 00 01 */	addi r0, r3, 1
/* 805D8C6C  B0 16 00 00 */	sth r0, 0(r22)
/* 805D8C70  A8 18 00 00 */	lha r0, 0(r24)
/* 805D8C74  7C 00 2A 14 */	add r0, r0, r5
/* 805D8C78  B0 18 00 00 */	sth r0, 0(r24)
lbl_805D8C7C:
/* 805D8C7C  A8 77 00 00 */	lha r3, 0(r23)
/* 805D8C80  A8 15 00 1A */	lha r0, 0x1a(r21)
/* 805D8C84  7C 03 00 00 */	cmpw r3, r0
/* 805D8C88  41 80 00 34 */	blt lbl_805D8CBC
/* 805D8C8C  38 1D 00 01 */	addi r0, r29, 1
/* 805D8C90  2C 04 00 00 */	cmpwi r4, 0
/* 805D8C94  B0 16 00 00 */	sth r0, 0(r22)
/* 805D8C98  A8 75 00 1A */	lha r3, 0x1a(r21)
/* 805D8C9C  38 03 FF FF */	addi r0, r3, -1
/* 805D8CA0  B0 17 00 00 */	sth r0, 0(r23)
/* 805D8CA4  B3 98 00 00 */	sth r28, 0(r24)
/* 805D8CA8  40 82 00 0C */	bne lbl_805D8CB4
/* 805D8CAC  3B 40 00 03 */	li r26, 3
/* 805D8CB0  48 00 00 1C */	b lbl_805D8CCC
lbl_805D8CB4:
/* 805D8CB4  7C 9A 23 78 */	mr r26, r4
/* 805D8CB8  48 00 00 14 */	b lbl_805D8CCC
lbl_805D8CBC:
/* 805D8CBC  3B FF 00 01 */	addi r31, r31, 1
/* 805D8CC0  3B DE 00 01 */	addi r30, r30, 1
lbl_805D8CC4:
/* 805D8CC4  7C 1E C8 00 */	cmpw r30, r25
/* 805D8CC8  41 80 FF 1C */	blt lbl_805D8BE4
lbl_805D8CCC:
/* 805D8CCC  7F 43 D3 78 */	mr r3, r26
/* 805D8CD0  39 61 00 40 */	addi r11, r1, 0x40
/* 805D8CD4  4B AC 22 2D */	bl func_8009AF00
/* 805D8CD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D8CDC  7C 08 03 A6 */	mtlr r0
/* 805D8CE0  38 21 00 40 */	addi r1, r1, 0x40
/* 805D8CE4  4E 80 00 20 */	blr 
