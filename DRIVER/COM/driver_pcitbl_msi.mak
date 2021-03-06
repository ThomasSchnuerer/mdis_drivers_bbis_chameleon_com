#***************************  M a k e f i l e  *******************************
#  
#         Author: ub/ts
#  
#    Description: Makefile definitions for the CHAMELEON BBIS driver
#                 Compile chameleon driver to read IRQ to use from
#                 PCI config space instead using the table inside FPGA. Also
#                 pass the MSI define for A21 MSI variant (customer specific)
#
#-----------------------------------------------------------------------------
#   Copyright 2019, MEN Mikro Elektronik GmbH
#*****************************************************************************
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


MAK_NAME=chameleon_pcitbl_msi
# the next line is updated during the MDIS installation
STAMPED_REVISION="mdis_drivers_bbis_chameleon_com_01_74-1-gce185b3-dirty_2019-04-23"

DEF_REVISION=MAK_REVISION=$(STAMPED_REVISION)

MAK_LIBS=$(LIB_PREFIX)$(MEN_LIB_DIR)/desc$(LIB_SUFFIX)	\
         $(LIB_PREFIX)$(MEN_LIB_DIR)/oss$(LIB_SUFFIX)	\
         $(LIB_PREFIX)$(MEN_LIB_DIR)/chameleon$(LIB_SUFFIX) \
         $(LIB_PREFIX)$(MEN_LIB_DIR)/chameleon_io$(LIB_SUFFIX) \
	 $(LIB_PREFIX)$(MEN_LIB_DIR)/dbg$(LIB_SUFFIX)

MAK_SWITCH=$(SW_PREFIX)CHAMELEON_USE_PCITABLE \
		$(SW_PREFIX)$(DEF_REVISION) \
	   $(SW_PREFIX)CHAMELEON_USE_A21_MSI

MAK_INCL=$(MEN_INC_DIR)/bb_chameleon.h	\
	 $(MEN_INC_DIR)/bb_defs.h	\
	 $(MEN_INC_DIR)/bb_entry.h	\
	 $(MEN_INC_DIR)/dbg.h		\
	 $(MEN_INC_DIR)/desc.h		\
	 $(MEN_INC_DIR)/mdis_api.h	\
	 $(MEN_INC_DIR)/mdis_com.h	\
	 $(MEN_INC_DIR)/mdis_err.h	\
         $(MEN_INC_DIR)/men_typs.h	\
         $(MEN_INC_DIR)/oss.h

MAK_INP1=bb_chameleon$(INP_SUFFIX)
MAK_INP2=io_access$(INP_SUFFIX)
MAK_INP=$(MAK_INP1) $(MAK_INP2)
