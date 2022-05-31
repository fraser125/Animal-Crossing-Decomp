lbl_803F8C7C:
/* 803F8C7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F8C80  7C 08 02 A6 */	mflr r0
/* 803F8C84  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F8C88  39 61 00 40 */	addi r11, r1, 0x40
/* 803F8C8C  4B CA 22 41 */	bl func_8009AECC
/* 803F8C90  7C DD 33 78 */	mr r29, r6
/* 803F8C94  7C 7B 1B 78 */	mr r27, r3
/* 803F8C98  7C 9C 23 78 */	mr r28, r4
/* 803F8C9C  7C BF 2B 78 */	mr r31, r5
/* 803F8CA0  7F A3 EB 78 */	mr r3, r29
/* 803F8CA4  3B C0 00 00 */	li r30, 0
/* 803F8CA8  38 80 20 00 */	li r4, 0x2000
/* 803F8CAC  4B FF EB F5 */	bl mCD_check_card
/* 803F8CB0  2C 03 00 01 */	cmpwi r3, 1
/* 803F8CB4  40 82 00 A8 */	bne lbl_803F8D5C
/* 803F8CB8  28 1C 00 00 */	cmplwi r28, 0
/* 803F8CBC  41 82 00 A0 */	beq lbl_803F8D5C
/* 803F8CC0  7F E3 FB 78 */	mr r3, r31
/* 803F8CC4  7F 84 E3 78 */	mr r4, r28
/* 803F8CC8  38 A0 00 00 */	li r5, 0
/* 803F8CCC  4B C9 7A 31 */	bl CARDMount
/* 803F8CD0  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8CD4  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8CD8  2C 00 00 00 */	cmpwi r0, 0
/* 803F8CDC  41 82 00 0C */	beq lbl_803F8CE8
/* 803F8CE0  2C 00 FF FA */	cmpwi r0, -6
/* 803F8CE4  40 82 00 68 */	bne lbl_803F8D4C
lbl_803F8CE8:
/* 803F8CE8  7F E3 FB 78 */	mr r3, r31
/* 803F8CEC  4B C9 70 8D */	bl CARDCheck
/* 803F8CF0  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8CF4  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8CF8  2C 00 00 00 */	cmpwi r0, 0
/* 803F8CFC  40 82 00 44 */	bne lbl_803F8D40
/* 803F8D00  7F E3 FB 78 */	mr r3, r31
/* 803F8D04  7F 64 DB 78 */	mr r4, r27
/* 803F8D08  38 A1 00 08 */	addi r5, r1, 8
/* 803F8D0C  4B C9 87 99 */	bl CARDOpen
/* 803F8D10  90 7D 00 00 */	stw r3, 0(r29)
/* 803F8D14  80 1D 00 00 */	lwz r0, 0(r29)
/* 803F8D18  2C 00 00 00 */	cmpwi r0, 0
/* 803F8D1C  40 82 00 18 */	bne lbl_803F8D34
/* 803F8D20  7F E4 FB 78 */	mr r4, r31
/* 803F8D24  38 61 00 08 */	addi r3, r1, 8
/* 803F8D28  4B FF F0 ED */	bl mCD_close_and_unmount
/* 803F8D2C  3B C0 00 01 */	li r30, 1
/* 803F8D30  48 00 00 2C */	b lbl_803F8D5C
lbl_803F8D34:
/* 803F8D34  7F E3 FB 78 */	mr r3, r31
/* 803F8D38  4B C9 7A A9 */	bl CARDUnmount
/* 803F8D3C  48 00 00 20 */	b lbl_803F8D5C
lbl_803F8D40:
/* 803F8D40  7F E3 FB 78 */	mr r3, r31
/* 803F8D44  4B C9 7A 9D */	bl CARDUnmount
/* 803F8D48  48 00 00 14 */	b lbl_803F8D5C
lbl_803F8D4C:
/* 803F8D4C  2C 00 FF F3 */	cmpwi r0, -13
/* 803F8D50  40 82 00 0C */	bne lbl_803F8D5C
/* 803F8D54  7F E3 FB 78 */	mr r3, r31
/* 803F8D58  4B C9 7A 89 */	bl CARDUnmount
lbl_803F8D5C:
/* 803F8D5C  7F C3 F3 78 */	mr r3, r30
/* 803F8D60  39 61 00 40 */	addi r11, r1, 0x40
/* 803F8D64  4B CA 21 B5 */	bl func_8009AF18
/* 803F8D68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F8D6C  7C 08 03 A6 */	mtlr r0
/* 803F8D70  38 21 00 40 */	addi r1, r1, 0x40
/* 803F8D74  4E 80 00 20 */	blr 
