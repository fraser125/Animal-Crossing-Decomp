lbl_803EC2A0:
/* 803EC2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC2A4  7C 08 02 A6 */	mflr r0
/* 803EC2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC2AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EC2B0  7C 9F 23 78 */	mr r31, r4
/* 803EC2B4  93 C1 00 08 */	stw r30, 8(r1)
/* 803EC2B8  7C 7E 1B 78 */	mr r30, r3
/* 803EC2BC  4B FF FE 9D */	bl func_803EC158
/* 803EC2C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EC2C4  2C 00 00 1C */	cmpwi r0, 0x1c
/* 803EC2C8  40 80 00 2C */	bge lbl_803EC2F4
/* 803EC2CC  2C 00 00 08 */	cmpwi r0, 8
/* 803EC2D0  41 82 00 84 */	beq lbl_803EC354
/* 803EC2D4  40 80 00 14 */	bge lbl_803EC2E8
/* 803EC2D8  2C 00 00 00 */	cmpwi r0, 0
/* 803EC2DC  41 82 00 3C */	beq lbl_803EC318
/* 803EC2E0  40 80 00 58 */	bge lbl_803EC338
/* 803EC2E4  48 00 00 F8 */	b lbl_803EC3DC
lbl_803EC2E8:
/* 803EC2E8  2C 00 00 14 */	cmpwi r0, 0x14
/* 803EC2EC  41 82 00 68 */	beq lbl_803EC354
/* 803EC2F0  48 00 00 48 */	b lbl_803EC338
lbl_803EC2F4:
/* 803EC2F4  2C 00 00 66 */	cmpwi r0, 0x66
/* 803EC2F8  41 82 00 D8 */	beq lbl_803EC3D0
/* 803EC2FC  40 80 00 10 */	bge lbl_803EC30C
/* 803EC300  2C 00 00 65 */	cmpwi r0, 0x65
/* 803EC304  40 80 00 BC */	bge lbl_803EC3C0
/* 803EC308  48 00 00 D4 */	b lbl_803EC3DC
lbl_803EC30C:
/* 803EC30C  2C 00 00 FF */	cmpwi r0, 0xff
/* 803EC310  41 82 00 CC */	beq lbl_803EC3DC
/* 803EC314  48 00 00 C8 */	b lbl_803EC3DC
lbl_803EC318:
/* 803EC318  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 803EC31C  38 80 00 84 */	li r4, 0x84
/* 803EC320  38 A0 00 04 */	li r5, 4
/* 803EC324  4B F8 99 BD */	bl Actor_info_name_search
/* 803EC328  28 03 00 00 */	cmplwi r3, 0
/* 803EC32C  41 82 00 B0 */	beq lbl_803EC3DC
/* 803EC330  4B F8 81 11 */	bl Actor_delete
/* 803EC334  48 00 00 A8 */	b lbl_803EC3DC
lbl_803EC338:
/* 803EC338  3C 80 80 66 */	lis r4, data_8065DAF8@ha /* 0x8065DAF8@ha */
/* 803EC33C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EC340  38 64 DA F8 */	addi r3, r4, data_8065DAF8@l /* 0x8065DAF8@l */
/* 803EC344  7F C4 F3 78 */	mr r4, r30
/* 803EC348  7C 63 00 AE */	lbzx r3, r3, r0
/* 803EC34C  4B FB 21 E9 */	bl mEv_actor_dying_message
/* 803EC350  48 00 00 8C */	b lbl_803EC3DC
lbl_803EC354:
/* 803EC354  38 60 00 0C */	li r3, 0xc
/* 803EC358  38 80 00 04 */	li r4, 4
/* 803EC35C  4B FB 17 A5 */	bl mEv_check_status
/* 803EC360  2C 03 00 00 */	cmpwi r3, 0
/* 803EC364  41 82 00 14 */	beq lbl_803EC378
/* 803EC368  7F C4 F3 78 */	mr r4, r30
/* 803EC36C  38 60 00 0C */	li r3, 0xc
/* 803EC370  4B FB 21 C5 */	bl mEv_actor_dying_message
/* 803EC374  48 00 00 68 */	b lbl_803EC3DC
lbl_803EC378:
/* 803EC378  38 60 00 0F */	li r3, 0xf
/* 803EC37C  38 80 00 04 */	li r4, 4
/* 803EC380  4B FB 17 81 */	bl mEv_check_status
/* 803EC384  2C 03 00 00 */	cmpwi r3, 0
/* 803EC388  41 82 00 14 */	beq lbl_803EC39C
/* 803EC38C  7F C4 F3 78 */	mr r4, r30
/* 803EC390  38 60 00 0F */	li r3, 0xf
/* 803EC394  4B FB 21 A1 */	bl mEv_actor_dying_message
/* 803EC398  48 00 00 44 */	b lbl_803EC3DC
lbl_803EC39C:
/* 803EC39C  38 60 00 0E */	li r3, 0xe
/* 803EC3A0  38 80 00 04 */	li r4, 4
/* 803EC3A4  4B FB 17 5D */	bl mEv_check_status
/* 803EC3A8  2C 03 00 00 */	cmpwi r3, 0
/* 803EC3AC  41 82 00 30 */	beq lbl_803EC3DC
/* 803EC3B0  7F C4 F3 78 */	mr r4, r30
/* 803EC3B4  38 60 00 0E */	li r3, 0xe
/* 803EC3B8  4B FB 21 7D */	bl mEv_actor_dying_message
/* 803EC3BC  48 00 00 20 */	b lbl_803EC3DC
lbl_803EC3C0:
/* 803EC3C0  7F C4 F3 78 */	mr r4, r30
/* 803EC3C4  38 60 00 04 */	li r3, 4
/* 803EC3C8  4B FB 21 6D */	bl mEv_actor_dying_message
/* 803EC3CC  48 00 00 10 */	b lbl_803EC3DC
lbl_803EC3D0:
/* 803EC3D0  7F C4 F3 78 */	mr r4, r30
/* 803EC3D4  38 60 00 05 */	li r3, 5
/* 803EC3D8  4B FB 21 5D */	bl mEv_actor_dying_message
lbl_803EC3DC:
/* 803EC3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC3E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EC3E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EC3E8  7C 08 03 A6 */	mtlr r0
/* 803EC3EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC3F0  4E 80 00 20 */	blr 
