lbl_803F8B18:
/* 803F8B18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F8B1C  7C 08 02 A6 */	mflr r0
/* 803F8B20  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F8B24  39 61 00 40 */	addi r11, r1, 0x40
/* 803F8B28  4B CA 23 99 */	bl func_8009AEC0
/* 803F8B2C  7C 78 1B 79 */	or. r24, r3, r3
/* 803F8B30  7C 99 23 78 */	mr r25, r4
/* 803F8B34  7C BA 2B 78 */	mr r26, r5
/* 803F8B38  7C DB 33 78 */	mr r27, r6
/* 803F8B3C  7C FF 3B 78 */	mr r31, r7
/* 803F8B40  7D 1C 43 78 */	mr r28, r8
/* 803F8B44  3B A0 FF FF */	li r29, -1
/* 803F8B48  41 82 01 0C */	beq lbl_803F8C54
/* 803F8B4C  57 00 06 FF */	clrlwi. r0, r24, 0x1b
/* 803F8B50  40 82 01 04 */	bne lbl_803F8C54
/* 803F8B54  7F 83 E3 78 */	mr r3, r28
/* 803F8B58  7F E5 FB 78 */	mr r5, r31
/* 803F8B5C  38 80 20 00 */	li r4, 0x2000
/* 803F8B60  4B FF ED 41 */	bl mCD_check_card
/* 803F8B64  2C 03 00 01 */	cmpwi r3, 1
/* 803F8B68  40 82 00 F8 */	bne lbl_803F8C60
/* 803F8B6C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A000@ha */
/* 803F8B70  38 63 A0 00 */	addi r3, r3, 0xA000 /* 0x0000A000@l */
/* 803F8B74  4B FF EC 81 */	bl mCD_malloc_32
/* 803F8B78  7C 7E 1B 79 */	or. r30, r3, r3
/* 803F8B7C  41 82 00 E4 */	beq lbl_803F8C60
/* 803F8B80  7F E3 FB 78 */	mr r3, r31
/* 803F8B84  7F C4 F3 78 */	mr r4, r30
/* 803F8B88  38 A0 00 00 */	li r5, 0
/* 803F8B8C  4B C9 7B 71 */	bl CARDMount
/* 803F8B90  90 7C 00 00 */	stw r3, 0(r28)
/* 803F8B94  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F8B98  2C 00 00 00 */	cmpwi r0, 0
/* 803F8B9C  41 82 00 0C */	beq lbl_803F8BA8
/* 803F8BA0  2C 00 FF FA */	cmpwi r0, -6
/* 803F8BA4  40 82 00 8C */	bne lbl_803F8C30
lbl_803F8BA8:
/* 803F8BA8  7F E3 FB 78 */	mr r3, r31
/* 803F8BAC  4B C9 71 CD */	bl CARDCheck
/* 803F8BB0  90 7C 00 00 */	stw r3, 0(r28)
/* 803F8BB4  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F8BB8  2C 00 00 00 */	cmpwi r0, 0
/* 803F8BBC  40 82 00 68 */	bne lbl_803F8C24
/* 803F8BC0  7F E3 FB 78 */	mr r3, r31
/* 803F8BC4  7F 24 CB 78 */	mr r4, r25
/* 803F8BC8  38 A1 00 08 */	addi r5, r1, 8
/* 803F8BCC  4B C9 88 D9 */	bl CARDOpen
/* 803F8BD0  90 7C 00 00 */	stw r3, 0(r28)
/* 803F8BD4  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F8BD8  2C 00 00 00 */	cmpwi r0, 0
/* 803F8BDC  40 82 00 3C */	bne lbl_803F8C18
/* 803F8BE0  7F 04 C3 78 */	mr r4, r24
/* 803F8BE4  7F 45 D3 78 */	mr r5, r26
/* 803F8BE8  7F 66 DB 78 */	mr r6, r27
/* 803F8BEC  38 61 00 08 */	addi r3, r1, 8
/* 803F8BF0  4B C9 92 51 */	bl CARDRead
/* 803F8BF4  90 7C 00 00 */	stw r3, 0(r28)
/* 803F8BF8  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F8BFC  2C 00 00 00 */	cmpwi r0, 0
/* 803F8C00  40 82 00 08 */	bne lbl_803F8C08
/* 803F8C04  3B A0 00 01 */	li r29, 1
lbl_803F8C08:
/* 803F8C08  7F E4 FB 78 */	mr r4, r31
/* 803F8C0C  38 61 00 08 */	addi r3, r1, 8
/* 803F8C10  4B FF F2 05 */	bl mCD_close_and_unmount
/* 803F8C14  48 00 00 2C */	b lbl_803F8C40
lbl_803F8C18:
/* 803F8C18  7F E3 FB 78 */	mr r3, r31
/* 803F8C1C  4B C9 7B C5 */	bl CARDUnmount
/* 803F8C20  48 00 00 20 */	b lbl_803F8C40
lbl_803F8C24:
/* 803F8C24  7F E3 FB 78 */	mr r3, r31
/* 803F8C28  4B C9 7B B9 */	bl CARDUnmount
/* 803F8C2C  48 00 00 14 */	b lbl_803F8C40
lbl_803F8C30:
/* 803F8C30  2C 00 FF F3 */	cmpwi r0, -13
/* 803F8C34  40 82 00 0C */	bne lbl_803F8C40
/* 803F8C38  7F E3 FB 78 */	mr r3, r31
/* 803F8C3C  4B C9 7B A5 */	bl CARDUnmount
lbl_803F8C40:
/* 803F8C40  28 1E 00 00 */	cmplwi r30, 0
/* 803F8C44  41 82 00 1C */	beq lbl_803F8C60
/* 803F8C48  7F C3 F3 78 */	mr r3, r30
/* 803F8C4C  4B FC 38 69 */	bl zelda_free
/* 803F8C50  48 00 00 10 */	b lbl_803F8C60
lbl_803F8C54:
/* 803F8C54  38 00 FF 80 */	li r0, -128
/* 803F8C58  3B A0 FF FF */	li r29, -1
/* 803F8C5C  90 1C 00 00 */	stw r0, 0(r28)
lbl_803F8C60:
/* 803F8C60  7F A3 EB 78 */	mr r3, r29
/* 803F8C64  39 61 00 40 */	addi r11, r1, 0x40
/* 803F8C68  4B CA 22 A5 */	bl func_8009AF0C
/* 803F8C6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F8C70  7C 08 03 A6 */	mtlr r0
/* 803F8C74  38 21 00 40 */	addi r1, r1, 0x40
/* 803F8C78  4E 80 00 20 */	blr 
