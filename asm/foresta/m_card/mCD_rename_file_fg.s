lbl_803F9E04:
/* 803F9E04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9E08  7C 08 02 A6 */	mflr r0
/* 803F9E0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9E10  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9E14  4B CA 10 B5 */	bl func_8009AEC8
/* 803F9E18  2C 05 FF FF */	cmpwi r5, -1
/* 803F9E1C  7C 7A 1B 78 */	mr r26, r3
/* 803F9E20  7C 9B 23 78 */	mr r27, r4
/* 803F9E24  7C DC 33 78 */	mr r28, r6
/* 803F9E28  7C FD 3B 78 */	mr r29, r7
/* 803F9E2C  3B C0 00 00 */	li r30, 0
/* 803F9E30  41 82 00 A4 */	beq lbl_803F9ED4
/* 803F9E34  28 1D 00 00 */	cmplwi r29, 0
/* 803F9E38  41 82 00 9C */	beq lbl_803F9ED4
/* 803F9E3C  7F 83 E3 78 */	mr r3, r28
/* 803F9E40  7C BF 2B 78 */	mr r31, r5
/* 803F9E44  38 80 20 00 */	li r4, 0x2000
/* 803F9E48  4B FF DA 59 */	bl mCD_check_card
/* 803F9E4C  2C 03 00 01 */	cmpwi r3, 1
/* 803F9E50  40 82 00 84 */	bne lbl_803F9ED4
/* 803F9E54  7F E3 FB 78 */	mr r3, r31
/* 803F9E58  7F A4 EB 78 */	mr r4, r29
/* 803F9E5C  38 A0 00 00 */	li r5, 0
/* 803F9E60  4B C9 68 9D */	bl CARDMount
/* 803F9E64  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9E68  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9E6C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9E70  41 82 00 0C */	beq lbl_803F9E7C
/* 803F9E74  2C 00 FF FF */	cmpwi r0, -1
/* 803F9E78  40 82 00 4C */	bne lbl_803F9EC4
lbl_803F9E7C:
/* 803F9E7C  7F E3 FB 78 */	mr r3, r31
/* 803F9E80  4B C9 5E F9 */	bl CARDCheck
/* 803F9E84  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9E88  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9E8C  2C 00 00 00 */	cmpwi r0, 0
/* 803F9E90  40 82 00 28 */	bne lbl_803F9EB8
/* 803F9E94  7F E3 FB 78 */	mr r3, r31
/* 803F9E98  7F 64 DB 78 */	mr r4, r27
/* 803F9E9C  7F 45 D3 78 */	mr r5, r26
/* 803F9EA0  4B C9 8C 3D */	bl CARDRename
/* 803F9EA4  90 7C 00 00 */	stw r3, 0(r28)
/* 803F9EA8  80 1C 00 00 */	lwz r0, 0(r28)
/* 803F9EAC  2C 00 00 00 */	cmpwi r0, 0
/* 803F9EB0  40 82 00 08 */	bne lbl_803F9EB8
/* 803F9EB4  3B C0 00 01 */	li r30, 1
lbl_803F9EB8:
/* 803F9EB8  7F E3 FB 78 */	mr r3, r31
/* 803F9EBC  4B C9 69 25 */	bl CARDUnmount
/* 803F9EC0  48 00 00 14 */	b lbl_803F9ED4
lbl_803F9EC4:
/* 803F9EC4  2C 00 FF F3 */	cmpwi r0, -13
/* 803F9EC8  40 82 00 0C */	bne lbl_803F9ED4
/* 803F9ECC  7F E3 FB 78 */	mr r3, r31
/* 803F9ED0  4B C9 69 11 */	bl CARDUnmount
lbl_803F9ED4:
/* 803F9ED4  7F C3 F3 78 */	mr r3, r30
/* 803F9ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9EDC  4B CA 10 39 */	bl func_8009AF14
/* 803F9EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9EE4  7C 08 03 A6 */	mtlr r0
/* 803F9EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 803F9EEC  4E 80 00 20 */	blr 
