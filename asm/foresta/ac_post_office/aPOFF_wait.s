lbl_805B80BC:
/* 805B80BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B80C0  7C 08 02 A6 */	mflr r0
/* 805B80C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B80C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805B80CC  4B AE 2E 09 */	bl func_8009AED4
/* 805B80D0  7C 7F 1B 78 */	mr r31, r3
/* 805B80D4  83 C3 02 B0 */	lwz r30, 0x2b0(r3)
/* 805B80D8  7C 9D 23 78 */	mr r29, r4
/* 805B80DC  38 60 00 03 */	li r3, 3
/* 805B80E0  7F E4 FB 78 */	mr r4, r31
/* 805B80E4  4B DE 21 81 */	bl mDemo_Check
/* 805B80E8  2C 03 00 00 */	cmpwi r3, 0
/* 805B80EC  41 82 00 2C */	beq lbl_805B8118
/* 805B80F0  2C 1E 00 04 */	cmpwi r30, 4
/* 805B80F4  40 82 00 14 */	bne lbl_805B8108
/* 805B80F8  3C 80 80 65 */	lis r4, lit_577@ha /* 0x8064AA4C@ha */
/* 805B80FC  7F E3 FB 78 */	mr r3, r31
/* 805B8100  C0 24 AA 4C */	lfs f1, lit_577@l(r4)  /* 0x8064AA4C@l */
/* 805B8104  4B FF FE 89 */	bl aPOFF_setup_animation
lbl_805B8108:
/* 805B8108  7F E3 FB 78 */	mr r3, r31
/* 805B810C  38 80 00 01 */	li r4, 1
/* 805B8110  48 00 01 99 */	bl aPOFF_setup_action
/* 805B8114  48 00 00 5C */	b lbl_805B8170
lbl_805B8118:
/* 805B8118  7F E3 FB 78 */	mr r3, r31
/* 805B811C  7F A4 EB 78 */	mr r4, r29
/* 805B8120  4B FF FD 0D */	bl aPOFF_check_open
/* 805B8124  2C 03 00 02 */	cmpwi r3, 2
/* 805B8128  40 82 00 1C */	bne lbl_805B8144
/* 805B812C  3C 60 80 5C */	lis r3, aPOFF_open_door_demo_ct@ha /* 0x805B8054@ha */
/* 805B8130  7F E4 FB 78 */	mr r4, r31
/* 805B8134  38 A3 80 54 */	addi r5, r3, aPOFF_open_door_demo_ct@l /* 0x805B8054@l */
/* 805B8138  38 60 00 03 */	li r3, 3
/* 805B813C  4B DE 20 21 */	bl mDemo_Request
/* 805B8140  48 00 00 30 */	b lbl_805B8170
lbl_805B8144:
/* 805B8144  2C 03 00 03 */	cmpwi r3, 3
/* 805B8148  40 82 00 28 */	bne lbl_805B8170
/* 805B814C  2C 1E 00 04 */	cmpwi r30, 4
/* 805B8150  40 82 00 14 */	bne lbl_805B8164
/* 805B8154  3C 80 80 65 */	lis r4, lit_577@ha /* 0x8064AA4C@ha */
/* 805B8158  7F E3 FB 78 */	mr r3, r31
/* 805B815C  C0 24 AA 4C */	lfs f1, lit_577@l(r4)  /* 0x8064AA4C@l */
/* 805B8160  4B FF FE 2D */	bl aPOFF_setup_animation
lbl_805B8164:
/* 805B8164  7F E3 FB 78 */	mr r3, r31
/* 805B8168  38 80 00 02 */	li r4, 2
/* 805B816C  48 00 01 3D */	bl aPOFF_setup_action
lbl_805B8170:
/* 805B8170  39 61 00 20 */	addi r11, r1, 0x20
/* 805B8174  4B AE 2D AD */	bl func_8009AF20
/* 805B8178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B817C  7C 08 03 A6 */	mtlr r0
/* 805B8180  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8184  4E 80 00 20 */	blr 
