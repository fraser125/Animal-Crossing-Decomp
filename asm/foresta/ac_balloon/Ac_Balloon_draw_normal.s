lbl_80414368:
/* 80414368  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041436C  7C 08 02 A6 */	mflr r0
/* 80414370  90 01 00 34 */	stw r0, 0x34(r1)
/* 80414374  39 61 00 30 */	addi r11, r1, 0x30
/* 80414378  4B C8 6B 4D */	bl func_8009AEC4
/* 8041437C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80414380  7C 7C 1B 78 */	mr r28, r3
/* 80414384  83 44 00 00 */	lwz r26, 0(r4)
/* 80414388  7C 9F 23 78 */	mr r31, r4
/* 8041438C  54 03 45 EE */	rlwinm r3, r0, 8, 0x17, 0x17
/* 80414390  3B 3C 00 28 */	addi r25, r28, 0x28
/* 80414394  3B 63 02 48 */	addi r27, r3, 0x248
/* 80414398  7F 7C DA 14 */	add r27, r28, r27
/* 8041439C  4B FF 7E 39 */	bl Matrix_push
/* 804143A0  A8 9C 00 DC */	lha r4, 0xdc(r28)
/* 804143A4  38 60 00 00 */	li r3, 0
/* 804143A8  AB BC 00 DE */	lha r29, 0xde(r28)
/* 804143AC  38 04 C0 00 */	addi r0, r4, -16384
/* 804143B0  C0 39 00 00 */	lfs f1, 0(r25)
/* 804143B4  C0 59 00 04 */	lfs f2, 4(r25)
/* 804143B8  7C 1E 07 34 */	extsh r30, r0
/* 804143BC  C0 79 00 08 */	lfs f3, 8(r25)
/* 804143C0  4B FF 7F 41 */	bl Matrix_translate
/* 804143C4  7F A3 EB 78 */	mr r3, r29
/* 804143C8  38 80 00 01 */	li r4, 1
/* 804143CC  4B FF 82 91 */	bl Matrix_RotateY
/* 804143D0  7F C3 F3 78 */	mr r3, r30
/* 804143D4  38 80 00 01 */	li r4, 1
/* 804143D8  4B FF 80 E1 */	bl Matrix_RotateX
/* 804143DC  38 60 40 00 */	li r3, 0x4000
/* 804143E0  38 80 00 01 */	li r4, 1
/* 804143E4  4B FF 84 0D */	bl Matrix_RotateZ
/* 804143E8  A8 7C 04 5E */	lha r3, 0x45e(r28)
/* 804143EC  38 80 00 01 */	li r4, 1
/* 804143F0  4B FF 80 C9 */	bl Matrix_RotateX
/* 804143F4  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 804143F8  38 60 00 01 */	li r3, 1
/* 804143FC  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 80414400  C0 7C 00 64 */	lfs f3, 0x64(r28)
/* 80414404  4B FF 7F E9 */	bl Matrix_scale
/* 80414408  83 BA 02 D0 */	lwz r29, 0x2d0(r26)
/* 8041440C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80414410  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80414414  7F 43 D3 78 */	mr r3, r26
/* 80414418  90 1D 00 00 */	stw r0, 0(r29)
/* 8041441C  7F BE EB 78 */	mr r30, r29
/* 80414420  3B BD 00 08 */	addi r29, r29, 8
/* 80414424  4B FF 8F B1 */	bl _Matrix_to_Mtx_new
/* 80414428  90 7E 00 04 */	stw r3, 4(r30)
/* 8041442C  7F 43 D3 78 */	mr r3, r26
/* 80414430  93 BA 02 D0 */	stw r29, 0x2d0(r26)
/* 80414434  4B FD 0C D5 */	bl _texture_z_light_fog_prim
/* 80414438  7F 23 CB 78 */	mr r3, r25
/* 8041443C  7F E4 FB 78 */	mr r4, r31
/* 80414440  4B F6 1B 3D */	bl Setpos_HiliteReflect_init
/* 80414444  3C 60 80 41 */	lis r3, Ac_Balloon_draw_Before@ha /* 0x804142C0@ha */
/* 80414448  3C 80 80 41 */	lis r4, Ac_Balloon_draw_After@ha /* 0x80414314@ha */
/* 8041444C  38 C3 42 C0 */	addi r6, r3, Ac_Balloon_draw_Before@l /* 0x804142C0@l */
/* 80414450  7F 65 DB 78 */	mr r5, r27
/* 80414454  38 E4 43 14 */	addi r7, r4, Ac_Balloon_draw_After@l /* 0x80414314@l */
/* 80414458  7F E3 FB 78 */	mr r3, r31
/* 8041445C  7F 88 E3 78 */	mr r8, r28
/* 80414460  38 9C 01 74 */	addi r4, r28, 0x174
/* 80414464  4B F5 D2 D5 */	bl cKF_Si3_draw_R_SV
/* 80414468  4B FF 7D AD */	bl Matrix_pull
/* 8041446C  39 61 00 30 */	addi r11, r1, 0x30
/* 80414470  4B C8 6A A1 */	bl func_8009AF10
/* 80414474  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80414478  7C 08 03 A6 */	mtlr r0
/* 8041447C  38 21 00 30 */	addi r1, r1, 0x30
/* 80414480  4E 80 00 20 */	blr 
