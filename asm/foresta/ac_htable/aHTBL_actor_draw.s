lbl_805B1814:
/* 805B1814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B1818  7C 08 02 A6 */	mflr r0
/* 805B181C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B1820  39 61 00 20 */	addi r11, r1, 0x20
/* 805B1824  4B AE 96 A9 */	bl func_8009AECC
/* 805B1828  7C 9D 23 78 */	mr r29, r4
/* 805B182C  3C 80 80 6C */	lis r4, data_806C5520@ha /* 0x806C5520@ha */
/* 805B1830  83 DD 00 00 */	lwz r30, 0(r29)
/* 805B1834  3B E4 55 20 */	addi r31, r4, data_806C5520@l /* 0x806C5520@l */
/* 805B1838  83 63 02 B8 */	lwz r27, 0x2b8(r3)
/* 805B183C  7F C3 F3 78 */	mr r3, r30
/* 805B1840  4B E3 39 69 */	bl _texture_z_light_fog_prim_npc
/* 805B1844  7F C3 F3 78 */	mr r3, r30
/* 805B1848  4B E3 39 11 */	bl _texture_z_light_fog_prim_xlu
/* 805B184C  7F C3 F3 78 */	mr r3, r30
/* 805B1850  4B E3 38 E1 */	bl _texture_z_light_fog_prim_shadow
/* 805B1854  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 805B1858  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B185C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B1860  7F C3 F3 78 */	mr r3, r30
/* 805B1864  38 9C 00 08 */	addi r4, r28, 8
/* 805B1868  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B186C  90 1C 00 00 */	stw r0, 0(r28)
/* 805B1870  4B E5 BB 65 */	bl _Matrix_to_Mtx_new
/* 805B1874  90 7C 00 04 */	stw r3, 4(r28)
/* 805B1878  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B187C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B1880  7F C3 F3 78 */	mr r3, r30
/* 805B1884  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 805B1888  38 9C 00 08 */	addi r4, r28, 8
/* 805B188C  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 805B1890  90 1C 00 00 */	stw r0, 0(r28)
/* 805B1894  4B E5 BB 41 */	bl _Matrix_to_Mtx_new
/* 805B1898  90 7C 00 04 */	stw r3, 4(r28)
/* 805B189C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B18A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B18A4  3D 20 DE 00 */	lis r9, 0xde00
/* 805B18A8  81 5E 02 D0 */	lwz r10, 0x2d0(r30)
/* 805B18AC  57 6B 10 3A */	slwi r11, r27, 2
/* 805B18B0  39 1F 01 18 */	addi r8, r31, 0x118
/* 805B18B4  38 DF 01 24 */	addi r6, r31, 0x124
/* 805B18B8  38 0A 00 08 */	addi r0, r10, 8
/* 805B18BC  3C 83 00 02 */	addis r4, r3, 2
/* 805B18C0  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805B18C4  38 FF 00 90 */	addi r7, r31, 0x90
/* 805B18C8  7F A3 EB 78 */	mr r3, r29
/* 805B18CC  38 A0 00 01 */	li r5, 1
/* 805B18D0  91 2A 00 00 */	stw r9, 0(r10)
/* 805B18D4  7C 08 58 2E */	lwzx r0, r8, r11
/* 805B18D8  90 0A 00 04 */	stw r0, 4(r10)
/* 805B18DC  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 805B18E0  38 08 00 08 */	addi r0, r8, 8
/* 805B18E4  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 805B18E8  91 28 00 00 */	stw r9, 0(r8)
/* 805B18EC  7C 06 58 2E */	lwzx r0, r6, r11
/* 805B18F0  90 08 00 04 */	stw r0, 4(r8)
/* 805B18F4  80 C4 60 80 */	lwz r6, 0x6080(r4)
/* 805B18F8  7C 87 58 2E */	lwzx r4, r7, r11
/* 805B18FC  81 86 00 04 */	lwz r12, 4(r6)
/* 805B1900  7D 89 03 A6 */	mtctr r12
/* 805B1904  4E 80 04 21 */	bctrl 
/* 805B1908  39 61 00 20 */	addi r11, r1, 0x20
/* 805B190C  4B AE 96 0D */	bl func_8009AF18
/* 805B1910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B1914  7C 08 03 A6 */	mtlr r0
/* 805B1918  38 21 00 20 */	addi r1, r1, 0x20
/* 805B191C  4E 80 00 20 */	blr 
