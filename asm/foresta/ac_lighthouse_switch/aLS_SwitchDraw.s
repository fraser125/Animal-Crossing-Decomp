lbl_8042C68C:
/* 8042C68C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C690  7C 08 02 A6 */	mflr r0
/* 8042C694  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C698  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C69C  4B C6 E8 2D */	bl func_8009AEC8
/* 8042C6A0  7C 9B 23 78 */	mr r27, r4
/* 8042C6A4  7C 7A 1B 78 */	mr r26, r3
/* 8042C6A8  7F 63 DB 78 */	mr r3, r27
/* 8042C6AC  4B FF FE 75 */	bl aLS_MakeRoomPrimcolorDisplayList
/* 8042C6B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8042C6B4  41 82 00 B4 */	beq lbl_8042C768
/* 8042C6B8  80 1B 00 A0 */	lwz r0, 0xa0(r27)
/* 8042C6BC  80 7B 00 00 */	lwz r3, 0(r27)
/* 8042C6C0  54 04 3E 30 */	rlwinm r4, r0, 7, 0x18, 0x18
/* 8042C6C4  3B A4 00 98 */	addi r29, r4, 0x98
/* 8042C6C8  7F BA EA 14 */	add r29, r26, r29
/* 8042C6CC  4B FB 8A 3D */	bl _texture_z_light_fog_prim
/* 8042C6D0  83 9B 00 00 */	lwz r28, 0(r27)
/* 8042C6D4  38 60 00 00 */	li r3, 0
/* 8042C6D8  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8042C6DC  C0 5A 00 04 */	lfs f2, 4(r26)
/* 8042C6E0  C0 7A 00 08 */	lfs f3, 8(r26)
/* 8042C6E4  4B FD FC 1D */	bl Matrix_translate
/* 8042C6E8  38 60 00 00 */	li r3, 0
/* 8042C6EC  38 80 00 01 */	li r4, 1
/* 8042C6F0  4B FD FF 6D */	bl Matrix_RotateY
/* 8042C6F4  3C 80 80 64 */	lis r4, lit_584@ha /* 0x806440B0@ha */
/* 8042C6F8  38 60 00 01 */	li r3, 1
/* 8042C6FC  C0 24 40 B0 */	lfs f1, lit_584@l(r4)  /* 0x806440B0@l */
/* 8042C700  FC 40 08 90 */	fmr f2, f1
/* 8042C704  FC 60 08 90 */	fmr f3, f1
/* 8042C708  4B FD FC E5 */	bl Matrix_scale
/* 8042C70C  83 FC 02 D0 */	lwz r31, 0x2d0(r28)
/* 8042C710  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042C714  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042C718  38 7F 00 08 */	addi r3, r31, 8
/* 8042C71C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8042C720  90 1F 00 00 */	stw r0, 0(r31)
/* 8042C724  80 7B 00 00 */	lwz r3, 0(r27)
/* 8042C728  4B FE 0C AD */	bl _Matrix_to_Mtx_new
/* 8042C72C  90 7F 00 04 */	stw r3, 4(r31)
/* 8042C730  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8042C734  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 8042C738  7F 63 DB 78 */	mr r3, r27
/* 8042C73C  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 8042C740  7F A5 EB 78 */	mr r5, r29
/* 8042C744  7F 48 D3 78 */	mr r8, r26
/* 8042C748  38 9A 00 10 */	addi r4, r26, 0x10
/* 8042C74C  38 E9 00 08 */	addi r7, r9, 8
/* 8042C750  38 C0 00 00 */	li r6, 0
/* 8042C754  90 FC 02 D0 */	stw r7, 0x2d0(r28)
/* 8042C758  38 E0 00 00 */	li r7, 0
/* 8042C75C  90 09 00 00 */	stw r0, 0(r9)
/* 8042C760  93 C9 00 04 */	stw r30, 4(r9)
/* 8042C764  4B F4 4F D5 */	bl cKF_Si3_draw_R_SV
lbl_8042C768:
/* 8042C768  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C76C  4B C6 E7 A9 */	bl func_8009AF14
/* 8042C770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C774  7C 08 03 A6 */	mtlr r0
/* 8042C778  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C77C  4E 80 00 20 */	blr 
