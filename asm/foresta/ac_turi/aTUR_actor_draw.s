lbl_805C18CC:
/* 805C18CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C18D0  7C 08 02 A6 */	mflr r0
/* 805C18D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C18D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C18DC  4B AD 95 F1 */	bl func_8009AECC
/* 805C18E0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805C18E4  7C 7D 1B 78 */	mr r29, r3
/* 805C18E8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805C18EC  80 1D 02 AC */	lwz r0, 0x2ac(r29)
/* 805C18F0  3C 63 00 02 */	addis r3, r3, 2
/* 805C18F4  7C 9E 23 78 */	mr r30, r4
/* 805C18F8  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805C18FC  7C 03 07 34 */	extsh r3, r0
/* 805C1900  83 FE 00 00 */	lwz r31, 0(r30)
/* 805C1904  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C1908  7D 89 03 A6 */	mtctr r12
/* 805C190C  4E 80 04 21 */	bctrl 
/* 805C1910  7C 7B 1B 78 */	mr r27, r3
/* 805C1914  7F E3 FB 78 */	mr r3, r31
/* 805C1918  4B E4 BA BD */	bl _Matrix_to_Mtx_new
/* 805C191C  7C 7C 1B 79 */	or. r28, r3, r3
/* 805C1920  41 82 00 98 */	beq lbl_805C19B8
/* 805C1924  7F E3 FB 78 */	mr r3, r31
/* 805C1928  4B E2 38 81 */	bl _texture_z_light_fog_prim_npc
/* 805C192C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805C1930  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805C1934  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805C1938  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380003@ha */
/* 805C193C  90 08 00 00 */	stw r0, 0(r8)
/* 805C1940  3C 80 80 6C */	lis r4, model@ha /* 0x806C74BC@ha */
/* 805C1944  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C1948  38 C6 00 03 */	addi r6, r6, 0x0003 /* 0xDA380003@l */
/* 805C194C  93 68 00 04 */	stw r27, 4(r8)
/* 805C1950  3C 00 DE 00 */	lis r0, 0xde00
/* 805C1954  38 E4 74 BC */	addi r7, r4, model@l /* 0x806C74BC@l */
/* 805C1958  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C195C  90 C8 00 08 */	stw r6, 8(r8)
/* 805C1960  3C 83 00 02 */	addis r4, r3, 2
/* 805C1964  3C A0 80 6C */	lis r5, shadow@ha /* 0x806C74C4@ha */
/* 805C1968  7F C3 F3 78 */	mr r3, r30
/* 805C196C  93 88 00 0C */	stw r28, 0xc(r8)
/* 805C1970  39 08 00 10 */	addi r8, r8, 0x10
/* 805C1974  38 C5 74 C4 */	addi r6, r5, shadow@l /* 0x806C74C4@l */
/* 805C1978  38 A0 00 00 */	li r5, 0
/* 805C197C  90 08 00 00 */	stw r0, 0(r8)
/* 805C1980  7D 09 43 78 */	mr r9, r8
/* 805C1984  39 08 00 08 */	addi r8, r8, 8
/* 805C1988  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805C198C  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 805C1990  7C 07 00 2E */	lwzx r0, r7, r0
/* 805C1994  90 09 00 04 */	stw r0, 4(r9)
/* 805C1998  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805C199C  80 84 60 80 */	lwz r4, 0x6080(r4)
/* 805C19A0  80 1D 02 B8 */	lwz r0, 0x2b8(r29)
/* 805C19A4  81 84 00 04 */	lwz r12, 4(r4)
/* 805C19A8  54 00 10 3A */	slwi r0, r0, 2
/* 805C19AC  7C 86 00 2E */	lwzx r4, r6, r0
/* 805C19B0  7D 89 03 A6 */	mtctr r12
/* 805C19B4  4E 80 04 21 */	bctrl 
lbl_805C19B8:
/* 805C19B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C19BC  4B AD 95 5D */	bl func_8009AF18
/* 805C19C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C19C4  7C 08 03 A6 */	mtlr r0
/* 805C19C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C19CC  4E 80 00 20 */	blr 
