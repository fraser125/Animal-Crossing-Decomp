lbl_8041122C:
/* 8041122C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80411230  7C 08 02 A6 */	mflr r0
/* 80411234  90 01 00 34 */	stw r0, 0x34(r1)
/* 80411238  39 61 00 30 */	addi r11, r1, 0x30
/* 8041123C  4B C8 9C 91 */	bl func_8009AECC
/* 80411240  7C 9E 23 78 */	mr r30, r4
/* 80411244  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80411248  C0 23 05 5C */	lfs f1, 0x55c(r3)
/* 8041124C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 80411250  83 63 05 68 */	lwz r27, 0x568(r3)
/* 80411254  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 80411258  90 1F 00 00 */	stw r0, 0(r31)
/* 8041125C  4B C8 9B 49 */	bl func_8009ADA4
/* 80411260  3C 80 80 64 */	lis r4, ps_prim_g@ha /* 0x80643910@ha */
/* 80411264  3C A0 80 64 */	lis r5, ps_prim_r@ha /* 0x806438FC@ha */
/* 80411268  3C C0 80 64 */	lis r6, ps_prim_b@ha /* 0x80643924@ha */
/* 8041126C  57 68 10 3A */	slwi r8, r27, 2
/* 80411270  38 84 39 10 */	addi r4, r4, ps_prim_g@l /* 0x80643910@l */
/* 80411274  38 A5 38 FC */	addi r5, r5, ps_prim_r@l /* 0x806438FC@l */
/* 80411278  38 C6 39 24 */	addi r6, r6, ps_prim_b@l /* 0x80643924@l */
/* 8041127C  7C 04 40 2E */	lwzx r0, r4, r8
/* 80411280  3C 80 80 64 */	lis r4, ps_env_g@ha /* 0x8064394C@ha */
/* 80411284  7C E6 40 2E */	lwzx r7, r6, r8
/* 80411288  7C A5 40 2E */	lwzx r5, r5, r8
/* 8041128C  54 06 82 1E */	rlwinm r6, r0, 0x10, 8, 0xf
/* 80411290  38 84 39 4C */	addi r4, r4, ps_env_g@l /* 0x8064394C@l */
/* 80411294  39 80 00 00 */	li r12, 0
/* 80411298  50 A6 C0 0E */	rlwimi r6, r5, 0x18, 0, 7
/* 8041129C  7C 04 40 2E */	lwzx r0, r4, r8
/* 804112A0  50 E6 44 2E */	rlwimi r6, r7, 8, 0x10, 0x17
/* 804112A4  3C 80 80 64 */	lis r4, ps_env_r@ha /* 0x80643938@ha */
/* 804112A8  50 66 06 3E */	rlwimi r6, r3, 0, 0x18, 0x1f
/* 804112AC  3C A0 80 64 */	lis r5, ps_env_b@ha /* 0x80643960@ha */
/* 804112B0  38 84 39 38 */	addi r4, r4, ps_env_r@l /* 0x80643938@l */
/* 804112B4  90 DF 00 04 */	stw r6, 4(r31)
/* 804112B8  3C C0 FB 00 */	lis r6, 0xfb00
/* 804112BC  38 65 39 60 */	addi r3, r5, ps_env_b@l /* 0x80643960@l */
/* 804112C0  54 07 82 1E */	rlwinm r7, r0, 0x10, 8, 0xf
/* 804112C4  7C 84 40 2E */	lwzx r4, r4, r8
/* 804112C8  7C 03 40 2E */	lwzx r0, r3, r8
/* 804112CC  3C 60 00 50 */	lis r3, 0x0050 /* 0x00504245@ha */
/* 804112D0  50 87 C0 0E */	rlwimi r7, r4, 0x18, 0, 7
/* 804112D4  90 DF 00 08 */	stw r6, 8(r31)
/* 804112D8  50 07 44 2E */	rlwimi r7, r0, 8, 0x10, 0x17
/* 804112DC  3C 80 EF 00 */	lis r4, 0xEF00 /* 0xEF000CF0@ha */
/* 804112E0  38 A4 0C F0 */	addi r5, r4, 0x0CF0 /* 0xEF000CF0@l */
/* 804112E4  90 FF 00 0C */	stw r7, 0xc(r31)
/* 804112E8  38 C3 42 45 */	addi r6, r3, 0x4245 /* 0x00504245@l */
/* 804112EC  3C 60 FC 31 */	lis r3, 0xFC31 /* 0xFC30B261@ha */
/* 804112F0  90 BF 00 10 */	stw r5, 0x10(r31)
/* 804112F4  39 63 B2 61 */	addi r11, r3, 0xB261 /* 0xFC30B261@l */
/* 804112F8  3C 80 55 67 */	lis r4, 0x5567 /* 0x5566FF7F@ha */
/* 804112FC  3C 00 D9 00 */	lis r0, 0xd900
/* 80411300  90 DF 00 14 */	stw r6, 0x14(r31)
/* 80411304  39 44 FF 7F */	addi r10, r4, 0xFF7F /* 0x5566FF7F@l */
/* 80411308  3C 60 FD 68 */	lis r3, 0xFD68 /* 0xFD68003F@ha */
/* 8041130C  3C A0 80 C3 */	lis r5, data_80C32420@ha /* 0x80C32420@ha */
/* 80411310  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80411314  39 23 00 3F */	addi r9, r3, 0x003F /* 0xFD68003F@l */
/* 80411318  39 05 24 20 */	addi r8, r5, data_80C32420@l /* 0x80C32420@l */
/* 8041131C  3C 80 F5 68 */	lis r4, 0xF568 /* 0xF5681000@ha */
/* 80411320  91 9F 00 1C */	stw r12, 0x1c(r31)
/* 80411324  38 E4 10 00 */	addi r7, r4, 0x1000 /* 0xF5681000@l */
/* 80411328  3C 60 07 10 */	lis r3, 0x0710 /* 0x070FC03C@ha */
/* 8041132C  3C C0 07 00 */	lis r6, 0x700
/* 80411330  91 7F 00 20 */	stw r11, 0x20(r31)
/* 80411334  38 03 C0 3C */	addi r0, r3, 0xC03C /* 0x070FC03C@l */
/* 80411338  3C A0 E6 00 */	lis r5, 0xe600
/* 8041133C  3C 80 F4 00 */	lis r4, 0xf400
/* 80411340  91 5F 00 24 */	stw r10, 0x24(r31)
/* 80411344  3C 60 80 64 */	lis r3, draw_pos_x_674@ha /* 0x806438EC@ha */
/* 80411348  39 60 04 00 */	li r11, 0x400
/* 8041134C  39 40 00 00 */	li r10, 0
/* 80411350  91 3F 00 28 */	stw r9, 0x28(r31)
/* 80411354  91 1F 00 2C */	stw r8, 0x2c(r31)
/* 80411358  90 FF 00 30 */	stw r7, 0x30(r31)
/* 8041135C  90 DF 00 34 */	stw r6, 0x34(r31)
/* 80411360  3C C0 F2 00 */	lis r6, 0xf200
/* 80411364  90 BF 00 38 */	stw r5, 0x38(r31)
/* 80411368  3C A0 00 10 */	lis r5, 0x0010 /* 0x000FC03C@ha */
/* 8041136C  39 05 C0 3C */	addi r8, r5, 0xC03C /* 0x000FC03C@l */
/* 80411370  91 9F 00 3C */	stw r12, 0x3c(r31)
/* 80411374  90 9F 00 40 */	stw r4, 0x40(r31)
/* 80411378  3C 80 80 64 */	lis r4, draw_pos_y_675@ha /* 0x806438F4@ha */
/* 8041137C  81 24 38 F4 */	lwz r9, draw_pos_y_675@l(r4)  /* 0x806438F4@l */
/* 80411380  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80411384  3C 00 E7 00 */	lis r0, 0xe700
/* 80411388  80 83 38 EC */	lwz r4, draw_pos_x_674@l(r3)  /* 0x806438EC@l */
/* 8041138C  55 25 10 3A */	slwi r5, r9, 2
/* 80411390  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80411394  38 09 00 10 */	addi r0, r9, 0x10
/* 80411398  38 64 00 40 */	addi r3, r4, 0x40
/* 8041139C  54 84 10 3A */	slwi r4, r4, 2
/* 804113A0  91 9F 00 4C */	stw r12, 0x4c(r31)
/* 804113A4  39 20 00 00 */	li r9, 0
/* 804113A8  90 FF 00 50 */	stw r7, 0x50(r31)
/* 804113AC  54 07 10 3A */	slwi r7, r0, 2
/* 804113B0  91 9F 00 54 */	stw r12, 0x54(r31)
/* 804113B4  90 DF 00 58 */	stw r6, 0x58(r31)
/* 804113B8  54 66 10 3A */	slwi r6, r3, 2
/* 804113BC  91 1F 00 5C */	stw r8, 0x5c(r31)
/* 804113C0  3B FF 00 60 */	addi r31, r31, 0x60
/* 804113C4  7F E3 FB 78 */	mr r3, r31
/* 804113C8  39 00 00 00 */	li r8, 0
/* 804113CC  91 61 00 08 */	stw r11, 8(r1)
/* 804113D0  91 61 00 0C */	stw r11, 0xc(r1)
/* 804113D4  4B FD 46 4D */	bl gfx_gSPTextureRectangle1
/* 804113D8  3C 80 FD 68 */	lis r4, 0xFD68 /* 0xFD68003F@ha */
/* 804113DC  3C A0 80 C3 */	lis r5, log_win_logo4_tex@ha /* 0x80C32820@ha */
/* 804113E0  38 04 00 3F */	addi r0, r4, 0x003F /* 0xFD68003F@l */
/* 804113E4  3C 80 F5 68 */	lis r4, 0xF568 /* 0xF5681000@ha */
/* 804113E8  90 03 00 00 */	stw r0, 0(r3)
/* 804113EC  38 05 28 20 */	addi r0, r5, log_win_logo4_tex@l /* 0x80C32820@l */
/* 804113F0  3C C0 07 10 */	lis r6, 0x0710 /* 0x070FC03C@ha */
/* 804113F4  3C E0 00 10 */	lis r7, 0x0010 /* 0x000FC03C@ha */
/* 804113F8  90 03 00 04 */	stw r0, 4(r3)
/* 804113FC  3B 84 10 00 */	addi r28, r4, 0x1000 /* 0xF5681000@l */
/* 80411400  3C A0 80 64 */	lis r5, draw_pos_y_675@ha /* 0x806438F4@ha */
/* 80411404  3C 80 80 64 */	lis r4, draw_pos_x_674@ha /* 0x806438EC@ha */
/* 80411408  93 83 00 08 */	stw r28, 8(r3)
/* 8041140C  3C 00 07 00 */	lis r0, 0x700
/* 80411410  38 A5 38 F4 */	addi r5, r5, draw_pos_y_675@l /* 0x806438F4@l */
/* 80411414  38 84 38 EC */	addi r4, r4, draw_pos_x_674@l /* 0x806438EC@l */
/* 80411418  90 03 00 0C */	stw r0, 0xc(r3)
/* 8041141C  3C 00 E6 00 */	lis r0, 0xe600
/* 80411420  81 25 00 04 */	lwz r9, 4(r5)
/* 80411424  3B A0 00 00 */	li r29, 0
/* 80411428  90 03 00 10 */	stw r0, 0x10(r3)
/* 8041142C  3C A0 F4 00 */	lis r5, 0xf400
/* 80411430  81 44 00 04 */	lwz r10, 4(r4)
/* 80411434  38 09 00 10 */	addi r0, r9, 0x10
/* 80411438  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8041143C  38 86 C0 3C */	addi r4, r6, 0xC03C /* 0x070FC03C@l */
/* 80411440  38 CA 00 40 */	addi r6, r10, 0x40
/* 80411444  3D 00 E7 00 */	lis r8, 0xe700
/* 80411448  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8041144C  3F E0 F2 00 */	lis r31, 0xf200
/* 80411450  39 87 C0 3C */	addi r12, r7, 0xC03C /* 0x000FC03C@l */
/* 80411454  39 60 04 00 */	li r11, 0x400
/* 80411458  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8041145C  3B 63 00 38 */	addi r27, r3, 0x38
/* 80411460  55 44 10 3A */	slwi r4, r10, 2
/* 80411464  55 25 10 3A */	slwi r5, r9, 2
/* 80411468  91 03 00 20 */	stw r8, 0x20(r3)
/* 8041146C  54 C6 10 3A */	slwi r6, r6, 2
/* 80411470  54 07 10 3A */	slwi r7, r0, 2
/* 80411474  39 00 00 00 */	li r8, 0
/* 80411478  93 A3 00 24 */	stw r29, 0x24(r3)
/* 8041147C  39 20 00 00 */	li r9, 0
/* 80411480  39 40 00 00 */	li r10, 0
/* 80411484  93 83 00 28 */	stw r28, 0x28(r3)
/* 80411488  93 A3 00 2C */	stw r29, 0x2c(r3)
/* 8041148C  93 E3 00 30 */	stw r31, 0x30(r3)
/* 80411490  91 83 00 34 */	stw r12, 0x34(r3)
/* 80411494  7F 63 DB 78 */	mr r3, r27
/* 80411498  91 61 00 08 */	stw r11, 8(r1)
/* 8041149C  91 61 00 0C */	stw r11, 0xc(r1)
/* 804114A0  4B FD 45 81 */	bl gfx_gSPTextureRectangle1
/* 804114A4  90 7E 02 F0 */	stw r3, 0x2f0(r30)
/* 804114A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804114AC  4B C8 9A 6D */	bl func_8009AF18
/* 804114B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804114B4  7C 08 03 A6 */	mtlr r0
/* 804114B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804114BC  4E 80 00 20 */	blr 
