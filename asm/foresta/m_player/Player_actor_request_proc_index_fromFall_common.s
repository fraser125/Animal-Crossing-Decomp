lbl_804E8B70:
/* 804E8B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8B74  7C 08 02 A6 */	mflr r0
/* 804E8B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8B7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8B80  4B BB 23 55 */	bl func_8009AED4
/* 804E8B84  88 03 00 98 */	lbz r0, 0x98(r3)
/* 804E8B88  7C 7D 1B 78 */	mr r29, r3
/* 804E8B8C  7C 9E 23 78 */	mr r30, r4
/* 804E8B90  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804E8B94  41 82 00 24 */	beq lbl_804E8BB8
/* 804E8B98  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E8B9C  7F C3 F3 78 */	mr r3, r30
/* 804E8BA0  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E8BA4  38 80 00 00 */	li r4, 0
/* 804E8BA8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E8BAC  38 A0 00 04 */	li r5, 4
/* 804E8BB0  38 C0 00 01 */	li r6, 1
/* 804E8BB4  4B FF D4 9D */	bl func_804E6050
lbl_804E8BB8:
/* 804E8BB8  8B FD 11 2B */	lbz r31, 0x112b(r29)
/* 804E8BBC  7F A3 EB 78 */	mr r3, r29
/* 804E8BC0  80 9D 0C F8 */	lwz r4, 0xcf8(r29)
/* 804E8BC4  4B FF 7D E1 */	bl Player_actor_Get_ItemKind
/* 804E8BC8  7F E4 07 74 */	extsb r4, r31
/* 804E8BCC  7C 60 07 74 */	extsb r0, r3
/* 804E8BD0  7C 04 00 00 */	cmpw r4, r0
/* 804E8BD4  41 82 00 20 */	beq lbl_804E8BF4
/* 804E8BD8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E8BDC  7F C3 F3 78 */	mr r3, r30
/* 804E8BE0  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E8BE4  38 80 00 00 */	li r4, 0
/* 804E8BE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E8BEC  38 A0 00 01 */	li r5, 1
/* 804E8BF0  4B FF FD BD */	bl func_804E89AC
lbl_804E8BF4:
/* 804E8BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8BF8  4B BB 23 29 */	bl func_8009AF20
/* 804E8BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8C00  7C 08 03 A6 */	mtlr r0
/* 804E8C04  38 21 00 20 */	addi r1, r1, 0x20
/* 804E8C08  4E 80 00 20 */	blr 
