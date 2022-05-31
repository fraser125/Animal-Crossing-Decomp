lbl_80498BC8:
/* 80498BC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80498BCC  7C 08 02 A6 */	mflr r0
/* 80498BD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80498BD4  39 61 00 50 */	addi r11, r1, 0x50
/* 80498BD8  4B C0 22 C9 */	bl func_8009AEA0
/* 80498BDC  7C 99 23 78 */	mr r25, r4
/* 80498BE0  7C 78 1B 78 */	mr r24, r3
/* 80498BE4  1C 19 09 88 */	mulli r0, r25, 0x988
/* 80498BE8  80 63 01 B8 */	lwz r3, 0x1b8(r3)
/* 80498BEC  3C 80 80 69 */	lis r4, data_8068BB18@ha /* 0x8068BB18@ha */
/* 80498BF0  7C BA 2B 78 */	mr r26, r5
/* 80498BF4  7C 63 02 14 */	add r3, r3, r0
/* 80498BF8  3A 84 BB 18 */	addi r20, r4, data_8068BB18@l /* 0x8068BB18@l */
/* 80498BFC  8A 63 08 99 */	lbz r19, 0x899(r3)
/* 80498C00  7C DB 33 78 */	mr r27, r6
/* 80498C04  8A 43 08 9A */	lbz r18, 0x89a(r3)
/* 80498C08  7C FC 3B 78 */	mr r28, r7
/* 80498C0C  7D 1D 43 78 */	mr r29, r8
/* 80498C10  3A B4 00 98 */	addi r21, r20, 0x98
/* 80498C14  3A D4 00 AC */	addi r22, r20, 0xac
/* 80498C18  3B C0 00 00 */	li r30, 0
/* 80498C1C  3B E0 00 00 */	li r31, 0
/* 80498C20  3A E0 00 00 */	li r23, 0
lbl_80498C24:
/* 80498C24  7C 75 B8 2E */	lwzx r3, r21, r23
/* 80498C28  7C 16 B8 2E */	lwzx r0, r22, r23
/* 80498C2C  7E 33 1A 14 */	add r17, r19, r3
/* 80498C30  7E 12 02 14 */	add r16, r18, r0
/* 80498C34  7E 23 8B 78 */	mr r3, r17
/* 80498C38  7E 04 83 78 */	mr r4, r16
/* 80498C3C  4B F0 C5 CD */	bl mFI_BlockCheck
/* 80498C40  2C 03 00 01 */	cmpwi r3, 1
/* 80498C44  40 82 00 50 */	bne lbl_80498C94
/* 80498C48  7C 11 D0 00 */	cmpw r17, r26
/* 80498C4C  40 82 00 0C */	bne lbl_80498C58
/* 80498C50  7C 10 D8 00 */	cmpw r16, r27
/* 80498C54  41 82 00 40 */	beq lbl_80498C94
lbl_80498C58:
/* 80498C58  7C 11 E0 00 */	cmpw r17, r28
/* 80498C5C  40 82 00 0C */	bne lbl_80498C68
/* 80498C60  7C 10 E8 00 */	cmpw r16, r29
/* 80498C64  41 82 00 30 */	beq lbl_80498C94
lbl_80498C68:
/* 80498C68  38 94 00 C0 */	addi r4, r20, 0xc0
/* 80498C6C  7F 03 C3 78 */	mr r3, r24
/* 80498C70  7C E4 F8 AE */	lbzx r7, r4, r31
/* 80498C74  7F 24 CB 78 */	mr r4, r25
/* 80498C78  7E 25 8B 78 */	mr r5, r17
/* 80498C7C  7E 06 83 78 */	mr r6, r16
/* 80498C80  4B FF FE 79 */	bl aSNMgr_set_go_home_status_sub
/* 80498C84  2C 03 00 01 */	cmpwi r3, 1
/* 80498C88  40 82 00 0C */	bne lbl_80498C94
/* 80498C8C  3B C0 00 01 */	li r30, 1
/* 80498C90  48 00 00 14 */	b lbl_80498CA4
lbl_80498C94:
/* 80498C94  3B FF 00 01 */	addi r31, r31, 1
/* 80498C98  3A F7 00 04 */	addi r23, r23, 4
/* 80498C9C  2C 1F 00 05 */	cmpwi r31, 5
/* 80498CA0  41 80 FF 84 */	blt lbl_80498C24
lbl_80498CA4:
/* 80498CA4  7F C3 F3 78 */	mr r3, r30
/* 80498CA8  39 61 00 50 */	addi r11, r1, 0x50
/* 80498CAC  4B C0 22 41 */	bl func_8009AEEC
/* 80498CB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80498CB4  7C 08 03 A6 */	mtlr r0
/* 80498CB8  38 21 00 50 */	addi r1, r1, 0x50
/* 80498CBC  4E 80 00 20 */	blr 
